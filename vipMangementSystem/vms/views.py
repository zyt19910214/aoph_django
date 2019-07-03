# -*- coding: utf-8 -*-
from __future__ import print_function
from __future__ import print_function
from __future__ import print_function
from __future__ import print_function
from __future__ import unicode_literals

from django.http import HttpResponse
from DB import Mysql
import json
import logging
import time
from utils.fdfs_storage import FasfDFSStorage
import random
from functools import wraps
import  uuid
import os
from django.core.files.storage import FileSystemStorage

logger = logging.getLogger('django')
from JWT import JWT
jwt = JWT()
import re

@jwt.verify_bearer_token()
def list_vip_person(req):
    """
    会员列表查询
    :param req:
    :return:
    """

    data = req.GET.copy()
    sql = 'SELECT a.id, a.`name` AS vip_name, a.phone AS vip_phone, a.note AS vip_notes, a.sex AS vip_sex,' \
          ' sum(b.point) AS vip_person_point FROM person a LEFT JOIN point_detail b ON a.id = b.person_id and b.type =0 GROUP BY a.id ORDER BY a.id desc'

    if 'phone' in  data:
        phone = data['phone']
        sex = data['sex']
        if phone != '' and sex == '2':
            sql = "SELECT a.id, a.`name` AS vip_name, a.phone AS vip_phone, a.note AS vip_notes, a.sex AS vip_sex, sum(b.point) AS vip_person_point from (select * FROM person   WHERE `phone`='%s') a LEFT JOIN point_detail b ON a.id = b.person_id and b.type =0 GROUP BY a.id ORDER BY a.id desc" % (
            phone)
        elif phone == '' and sex != '2':
            sql = "SELECT a.id, a.`name` AS vip_name, a.phone AS vip_phone, a.note AS vip_notes, a.sex AS vip_sex, sum(b.point) AS vip_person_point from (select * FROM person   WHERE `sex` ='%s') a LEFT JOIN point_detail b ON a.id = b.person_id  and b.type =0 GROUP BY a.id ORDER BY a.id desc" % (
                sex)
        elif phone != '' and sex != '2':
            sql = "SELECT a.id, a.`name` AS vip_name, a.phone AS vip_phone, a.note AS vip_notes, a.sex AS vip_sex, sum(b.point) AS vip_person_point from (select * FROM person   WHERE `phone`='%s' AND `sex` ='%s') a LEFT JOIN point_detail b ON a.id = b.person_id and b.type =0 GROUP BY a.id ORDER BY a.id desc" % (
                phone,sex)
        else:
            pass

    db = Mysql()
    n_list = []
    query_result = db.getAll(sql)
    db.dispose()
    # print (len(query_result))
    if len(query_result)!=0:
        person_list = list(query_result)

        # print(len(person_list))
        # print req.GET
        limit = int(req.GET['limit'])
        page = int(req.GET['page'])

        for x in person_list:
            if x['vip_person_point'] is None:
                x['vip_person_point'] = 0
            if x['vip_sex'] == 0:
                x['vip_sex'] = '女'
            elif x['vip_sex'] == 1:
                x['vip_sex'] = '男'
            else:
                x['vip_sex'] = '未知'
            n_list.append(x)
            # print(len(n_list))
            # print(len(n_list[(page - 1) * limit:page * limit]))
        resp = {
            "code": 0,
            "msg": "",
            "count": len(n_list),
            "data": n_list[(page - 1) * limit:page * limit]
        }
    else:

        resp = {
            "code": 0,
            "msg": "",
            "count": 0,
            "data": n_list
        }
    logger.debug('【VIP人员接口数据】：' + json.dumps(resp))
    response = HttpResponse(json.dumps(resp), content_type="application/json")
    response["Access-Control-Allow-Origin"] = "*"
    response["Access-Control-Allow-Methods"] = "POST, GET, OPTIONS"
    response["Access-Control-Max-Age"] = "1000"
    response["Access-Control-Allow-Headers"] = "*"
    return response


@jwt.verify_bearer_token()
def add_vip_person(req):
    """
    会员添加
    :param req:
    :return:
    """
    # print (req)

    logger.debug('添加会员传入参数：'+str(req.POST))
    data = req.POST.copy()
    if data['sex'] == '男':
        data['sex'] = '1'
    else:
        data['sex'] = '0'

    db = Mysql()
    is_exist = db.getAll('SELECT * from person where phone =\'%s\''%(data['phone']))

    if (is_exist):
        # 已存在手机号无法注册会员
        resp = {
            "code": 2,
            "msg": "phone_is_exist"
        }
        logger.debug('添加失败,手机号已存在')
    else:
        sql = "INSERT INTO person (`name`, `sex`, `phone`, `note`, `create_time`, `resrver1`)" \
              " VALUES('%s','%s','%s','%s',now(),NULL)" %(data['username'],data['sex'],data['phone'],data['desc'])
        logger.debug (sql)
        dd = db.insertOne(sql)
        db.dispose()
        if dd != 0:
            # 会员添加成功
            resp = {
                "code": 0,
                "msg": "success"
            }
            logger.debug('会员添加成功')
        else:
            # 会员添加失败
            resp = {
                "code": 1,
                "msg": "internal_exceptions"
            }
            logger.debug('分类异常,会员添加失败')
    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def list_good(req):
    """
    商品查询
    :param req:
    :return:
    """
    data = req.GET.copy()
    sql = 'select a.*,b.name as type from good a INNER JOIN good_category b ON a.good_category_id = b.id ORDER BY uploadtime desc'
    if 'title' in data or 'category' in data:
        good_name = data['title']
        good_type = data['category']
        print(good_type)
        if good_name != '' and good_type == '':
            sql = "select a.*,b.`name` as type from(select * from good where `name`='%s')a INNER JOIN good_category b ON a.good_category_id = b.id ORDER BY a.uploadtime desc"%(good_name)
        elif good_name == '' and good_type != '':
            sql = "select a.*,b.`name` as type from(select * from good )a INNER  JOIN (select * from good_category where `id`='%s')  b ON a.good_category_id = b.id ORDER BY a.uploadtime desc"%(good_type)
        elif good_name != '' and good_type != '':
            sql ="select a.*,b.`name` as type from(select * from good where `name`='%s' )a INNER  JOIN (select * from good_category where `id`='%s')  b ON a.good_category_id = b.id ORDER BY a.uploadtime desc"%(good_name,good_type)
        else:
            pass
    db = Mysql()
    g_list = []
    query_result = db.getAll(sql)
    db.dispose()

    if len(query_result) != 0:
        good_list = list(query_result)

        for x in good_list:
           if x['uploadtime'] != '':
               x['uploadtime'] = str(x['uploadtime'])
           g_list.append(x)

        if 'limit' in req.GET:
            limit = int(req.GET['limit'])
            page = int(req.GET['page'])
            resp = {
                "code": 0,
                "msg": "",
                "count": len(g_list),
                "data": g_list[(page - 1) * limit:page * limit]
            }
            logger.debug(g_list[(page - 1) * limit:page * limit])
        else:
            resp = {
                "code": 0,
                "msg": "",
                "count": len(g_list),
                "data": g_list
            }

    else:

        resp = {
            "code": 0,
            "msg": "",
            "count": 0,
            "data": g_list
        }
    logger.debug('【商品接口数据】：' + json.dumps(resp))

    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def add_good(req):
    """
    添加商品
    :param req:
    :return:
    """
    logger.debug('添加商品传入参数：' + str(req.POST))
    data = req.POST.copy()
    if float(data['origin_price']) > float(data['price']):
        resp = {
            "code": 3,
            "msg": "price_incorrect"
        }
        logger.debug('原价低于售价,请重新添加')
    else:
        db = Mysql()
        is_exist = db.getAll('SELECT * from good where `name` =\'%s\'' % (data['title']))

        if is_exist:
            # 已存在该商品无法添加
            resp = {
                "code": 2,
                "msg": "good_is_exist"
            }
            logger.debug('添加失败,商品已存在')
        else:
            # count = str(int(data['add_count'])+int(data['count']))
            sql = "INSERT INTO `good` (`name`, `good_category_id`, `price`, `uploadtime`, `status`,`origin_price`,`img_url`,`img_urls`) VALUES ('%s', '%s', '%s', now(), '%s','%s','%s','%s');"%(data['title'],data['type'],data['price'],1,data['origin_price'],data['image_url'],data['image_url2'][1:])
            print(sql)
            logger.debug(sql)
            dd = db.insertOne(sql)

            if dd != 0:
                # 商品添加成功
                resp = {
                    "code": 0,
                    "msg": "success"
                }
                logger.debug('商品添加成功')


            else:
                # 会员添加失败
                resp = {
                    "code": 1,
                    "msg": "internal_exceptions"
                }
                logger.debug('分类异常,商品添加失败')
    db.dispose()
    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def undercarriage_good(req):
    """
        下架商品
        :param req:
        :return:
        """
    logger.debug('下架商品传入参数：' + str(req.POST))
    id_list = req.POST.copy()['checkData']
    logger.debug("下架商品的ID：" + str(id_list))
    sql = 'UPDATE good SET status=2 WHERE id IN (%s)' % (id_list)
    db = Mysql()
    result = db.update(sql)
    print(result)
    if result == len(id_list.split(",")):
        resp = {
            "code": 0,
            "msg": "success"
        }
    else:
        resp = {
            "code": 1,
            "msg": "internal_exceptions"
        }
    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def grounding_good(req):
    """
        上架商品
        :param req:
        :return:
        """
    logger.debug('上架商品传入参数：' + str(req.POST))
    id_list = req.POST.copy()['checkData']
    logger.debug("上架商品的ID：" + str(id_list))
    sql = 'UPDATE good SET status=1 WHERE id IN (%s)' % (id_list)
    db = Mysql()
    result = db.update(sql)
    print(result)
    if result == len(id_list.split(",")):
        resp = {
            "code": 0,
            "msg": "success"
        }
    else:
        resp = {
            "code": 1,
            "msg": "internal_exceptions"
        }
    return HttpResponse(json.dumps(resp), content_type="application/json")


# 分类增删改查
@jwt.verify_bearer_token()
def list_server(req):
    """
    分类查询
    :param req:
    :return:
    """
    data = req.GET.copy()
    sql = 'select * from good_category order by sort '
    # if 'servername' in data or 'type' in data:
    #     server_name = data['servername']
    #     server_type = data['type']
    #     if server_name != '' and server_type == '':
    #         sql = "select a.*,b.`name` as type from(select * from server where `name`='%s')a INNER JOIN server_category b ON a.server_category_id = b.id ORDER BY id "%(server_name)
    #     elif server_name == '' and server_type != '':
    #         sql = "select a.*,b.`name` as type from(select * from server )a INNER  JOIN (select * from server_category where `id`='%s')  b ON a.server_category_id = b.id ORDER BY id "%(server_type)
    #     elif server_name != '' and server_type != '':
    #         sql ="select a.*,b.`name` as type from(select * from server where `name`='%s' )a INNER  JOIN (select * from server_category where `id`='%s')  b ON a.server_category_id = b.id ORDER BY id"%(server_name,server_type)
    #     else:
    #         pass
    db = Mysql()

    query_result = db.getAll(sql)
    db.dispose()

    server_list = list(query_result)
    print(server_list)
    if 'limit' in req.GET:
        limit = int(req.GET['limit'])
        page = int(req.GET['page'])
        resp = {
            "code": 0,
            "msg": "",
            "count": len(server_list),
            "data": server_list[(page - 1) * limit:page * limit]
        }
    else:
        resp = {
            "code": 0,
            "msg": "",
            "count": len(server_list),
            "data": server_list
        }

    logger.debug('【分类接口数据】：' + json.dumps(resp))

    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def add_server(req):
    """
    添加分类
    :param req:
    :return:
    """
    logger.debug('添加分类传入参数：' + str(req.POST))
    data = req.POST.copy()

    db = Mysql()
    is_exist = db.getAll("SELECT * from good_category where `name` ='%s' or `sort` ='%s'"  % (data['name'],data['sort']))

    if is_exist:
        # 已存在该分类
        resp = {
            "code": 2,
            "msg": "server_is_exist"
        }
        logger.debug('添加失败,分类或排序已存在,请修改后添加！')
    else:
        sql = "INSERT INTO `good_category`(`name`,`sort`) VALUES ('%s','%s');"%(data['name'],data['sort'])
        logger.debug(sql)
        dd = db.insertOne(sql)
        db.dispose()
        if dd != 0:
            # 分类添加成功
            resp = {
                "code": 0,
                "msg": "success"
            }
            logger.debug('分类添加成功')
        else:
            # 分类添加失败
            resp = {
                "code": 1,
                "msg": "internal_exceptions"
            }
            logger.debug('分类异常,分类添加失败')
    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def edit_server(req):
    """
    编辑分类
    :param req:
    :return:
    """
    logger.debug('更新传入参数：' + str(req.POST))
    data = req.POST.copy()
    logger.debug(data)

    sql2 = "SELECT * from good_category where `name` ='%s' and id != '%s'" % (data['name'], data['id'])
    logger.debug(sql2)
    db = Mysql()
    is_exist = db.getAll(sql2)

    if is_exist:
        # 无法更新为已存在分类
        resp = {
            "code": 2,
            "msg": "server_is_exist"
        }
        logger.debug('更新失败,分类已存在')
    else:
        result = db.getOne("SELECT * from good_category where id = '%s'" % data['id'])
        # print(result)
        if result['name'] == data['name'] and int(result['sort']) == int(data['sort']):
            # 分类未更改无需更新
            resp = {
                "code": 2,
                "msg": "nothing is changed"
            }
            logger.debug('未变更,无需更新')
        else:
            sql = "UPDATE good_category SET  `name` = '%s',`sort`= '%s' WHERE id='%s'" % (data['name'], data['sort'],data['id'])
            logger.debug(sql)
            dd = db.update(sql)
            # print(dd)
            db.dispose()
            if dd != 0:
                # 分类更新成功
                resp = {
                    "code": 0,
                    "msg": "success"
                }
                logger.debug('分类更新成功')
            else:
                # 分类更新失败
                resp = {
                    "code": 1,
                    "msg": "internal_exceptions"
                }
                logger.debug('分类异常,分类更新失败')

    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def del_server(req):
    """
    分类删除（单个/批量删除）
    :param req:
    :return:
    """
    id_list = req.POST.copy()['checkData']
    logger.debug("删除数据的ID："+str(id_list))
    sql = 'DELETE FROM good_category WHERE id IN (%s)' % (id_list)
    db = Mysql()
    count = (db.delete(sql))
    db.dispose()
    if count == len(id_list.split(",")):
        resp = {
            "code": 0,
            "msg": "success"
        }
    else:
        resp = {
            "code": 1,
            "msg": "internal_exceptions"
        }

    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def add_ad(req):
    """
    添加公告
    :param req:
    :return:
    """
    id_list = req.POST.copy()
    logger.debug("添加公告传入的参数："+str(id_list))
    sql = "INSERT INTO `ad`(`info`,`atime`) VALUES ('%s', now())"%(id_list['ad'])
    print(sql)
    db = Mysql()
    count = (db.insertOne(sql))
    db.dispose()
    if count:
        resp = {
            "code": 0,
            "msg": "success"
        }
    else:
        resp = {
            "code": 1,
            "msg": "internal_exceptions"
        }

    return HttpResponse(json.dumps(resp), content_type="application/json")

@jwt.verify_bearer_token()
def list_ad(req):
    """
    获取公告
    :param req:
    :return:
    """

    db = Mysql()
    sql1 = "SELECT count(1) from `ad`;"
    result = db.getOne(sql1)
    if result['count(1)'] != 0:

        sql = "SELECT * from `ad` ORDER by `atime` desc LIMIT 1;"

        count = (db.getOne(sql))
        print(count)
        db.dispose()
        if count:
            resp = {
                "code": 0,
                "msg": "success",
                "data":count['info']
            }
        else:
            resp = {
                "code": 1,
                "msg": "internal_exceptions"
            }
    else:
        resp = {
            "code": 2,
            "msg": "no ad"
        }

    return HttpResponse(json.dumps(resp), content_type="application/json")


def get_person_love_top(req):
    """
    获取top10收藏商品
    :param req:
    :return:
    """

    db = Mysql()
    sql1 = "select b.name,a.count from (select good_id,count( good_id)  as count from person_love GROUP BY good_id ) a INNER JOIN good b on a.good_id = b.id order by a.count desc;"
    result = db.getAll(sql1)
    print(result)
    name_list = []
    count_list = []
    for x in result:
        name_list.append(x['name'])
        count_list.append(x['count'])
    dict = {}
    dict['name'] = name_list
    dict['count'] = count_list
    db.dispose()
    if result:
        resp = {
            "code": 0,
            "msg": "success",
            "data": dict
        }
    else:
        resp = {
            "code": 1,
            "msg": "internal_exceptions"
        }

    return HttpResponse(json.dumps(resp), content_type="application/json")


def manager_login(req):
    """
    管理者账号登录
    :param req:
    :return:
    """
    resp = ''
    username = req.POST.get('username')
    password = req.POST.get('password')
    sql = "SELECT * from manager where username ='%s' and password='%s'"%(username,password)
    db = Mysql()
    result = db.getOne(sql)
    if result:
        access_token = jwt.create_token(username)

        in_result = db.insertOne(
            "INSERT INTO `vms`.`t_token`(`user_id`,`token`, `time`) VALUES ('%s','%s', now());" %(result['id'],access_token) )

        if in_result:
            # print(access_token)
            resp = {
                "code": 0
                , "msg": "登入成功"
                , "data": {
                    "access_token": access_token
                }
            }
            return HttpResponse(json.dumps(resp), content_type="application/json")
    resp = {
        "code": 1
        , "msg": "登入失败"
        , "data": {
        }
    }
    db.dispose()
    return HttpResponse(json.dumps(resp), content_type="application/json")


def manager_logout(req):
    """
    管理者账号退出登录
    :param req:
    :return:
    """
    token = req.GET.get('access_token')
    db = Mysql()
    result = db.getAll("select * from t_token where token = '%s'"%token)
    if result:
        if db.delete("DELETE FROM t_token where token = '%s'"%token):
            resp = {
                "code": 0
                , "msg": "退出成功"
                , "data": {
                }
            }
        else:
            resp = {
                "code": 1
                , "msg": "数据库异常，退出失败"
                , "data": {
                }
            }
    else:
        resp = {
            "code": 1
            , "msg": "退出失败"
            , "data": {
            }
        }
    db.dispose()
    return HttpResponse(json.dumps(resp), content_type="application/json")


@jwt.verify_bearer_token()
def get_now_login_name(req):
    resp ={
      "code": 0
      ,"msg": ""
      ,"data": {
        "username": "张运通"
        ,"sex": "男"
        ,"role": 1
      }
    }
    return HttpResponse(json.dumps(resp), content_type="application/json")

@jwt.verify_bearer_token()
def change_assword(req):
    resp = ''
    token = req.POST.get('access_token')
    db =Mysql()
    result = db.getOne("select * from t_token  a INNER JOIN manager b  ON a.user_id = b.id  and b.`password` ='%s' and a.token = '%s'"%(req.POST.get('oldPassword'),token))

    if result:
        sql2 = "UPDATE manager SET `password` ='%s' WHERE id = '%s'"%(req.POST.get('password'),result['user_id'])
        if db.update(sql2):
            resp ={
              "code": 0
              ,"msg": "success"
              ,"data": {

              }
            }
        else:
            resp = {
                "code": 1
                , "msg": "failed"
                , "data": {

                }
            }
    else:
        resp = {
            "code": 2
            , "msg": "failed"
            , "data": {

            }
        }
    db.dispose()
    return HttpResponse(json.dumps(resp), content_type="application/json")


def upload_image(req):

    if req.method == "POST" and req.FILES.get('file'):
        try:
            dfs = FileSystemStorage()
            myfile = req.FILES.get('file')
            rname = str(uuid.uuid1()) + '.' + myfile.name.split('.')[-1]
            filename = dfs.save(os.getcwd() + '/static/images/' + rname, myfile)
            print("filename:" , filename)
            s = str(uuid.uuid1()) + '.' + myfile.name.split('.')[-1]
            logger.info("图片被重命名为："+s)
            # print(s)
            fs = FasfDFSStorage()
            rname = fs._save(s, filename)
            image_url = fs.url(rname)
            logger.info("图片的访问地址为： "+ image_url)

            logger.info("图片上传FasfDFS完成，开始删除本地图片---"+s)
            try:
                os.remove(filename)
                logger.info("删除本地图片---"+s+"成功")
            except Exception as e1:
                logger.error(e1)
                logger.info("删除本地图片---" + s + "失败")
            resp = {
                "code": 0
                , "msg": "success"
                , "data": {
                    "image_url": image_url
                }
            }
        except Exception as e:
            print(e)
            logger.error(e)


    else:
        resp = {
            "code": 1
            , "msg": "failed"
            , "data": {

            }
        }

    return HttpResponse(json.dumps(resp), content_type="application/json")


# wx接口
def wx_List_Good(req):
    db = Mysql()
    sql = "SELECT id,name,good_category_id as categoryId,price as minPrice,origin_price as originalPrice,status as statusStr,img_url as pic FROM good where status=1"
    result = db.getAll(sql)
    # print(list(result))

    resp = {
        "code": 1
        , "msg": "success"
        , "data": list(result)
    }
    return HttpResponse(json.dumps(resp), content_type="application/json")