"""vipMangementSystem URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from vms.views import list_vip_person as views_list_vip_person
from vms.views import add_vip_person as views_add_vip_person
# from vms.views import del_vip_person as views_del_vip_person
# from vms.views import edit_vip_person as views_edit_vip_person
from vms.views import list_good as views_list_good
from vms.views import add_good as views_add_good
# from vms.views import edit_good as views_edit_good
from vms.views import grounding_good as views_ground_good
from vms.views import undercarriage_good as views_under_good
from vms.views import list_server as views_list_server
from vms.views import add_server as views_add_server
from vms.views import edit_server as views_edit_server
from vms.views import del_server as views_del_server
# from vms.views import list_order as views_list_order
# from vms.views import add_order as views_add_order
# from vms.views import order_detail as views_order_detail
# from vms.views import end_order as views_end_order
# from vms.views import del_order as views_del_order
from vms.views import manager_login as views_manager_login
from vms.views import manager_logout as views_manager_logout
from vms.views import get_now_login_name as views_get_now_login_name
from vms.views import change_assword as views_change_password
from vms.views import upload_image as views_upload_image
from vms.views import add_ad as views_add_ad
from vms.views import list_ad as views_list_ad
from vms.views import get_person_love_top as views_get_person_love_top
from vms.views import onsale_good as views_onsale_good
from vms.views import delonsale_good as views_delonsale_good

from vms.views import wx_List_Good as views_wx_listgood
from vms.views import wx_List_onsaleGood as views_wx_List_onsaleGood
from vms.views import wx_list_type as views_wx_listype
from vms.views import wx_good_detail as views_wx_good_detail
from vms.views import wx_is_love as views_wx_is_love
from vms.views import wx_add_love as views_wx_add_love
from vms.views import wx_get_love_list as views_wx_get_love_list
from vms.views import wx_del_love as views_wx_del_love
from vms.views import wx_get_ad as views_wx_get_ad

urlpatterns = [

    url(r'^listVipPerson/$', views_list_vip_person),
    url(r'^addVipPerson/$', views_add_vip_person),
    # url(r'^delVipPerson/$', views_del_vip_person),
    # url(r'^editVipPerson/$', views_edit_vip_person),
    url(r'^listGood/$', views_list_good),
    url(r'^addGood/$', views_add_good),
    # url(r'^editGood/$', views_edit_good),
    url(r'^delGood/$', views_under_good),
    url(r'^groundGood/$', views_ground_good),
    url(r'^listServer/$', views_list_server),
    url(r'^addServer/$', views_add_server),
    url(r'^editServer/$', views_edit_server),
    url(r'^delServer/$', views_del_server),
    # url(r'^listOrder/$', views_list_order),
    # url(r'^addOrder/$', views_add_order),
    # url(r'^orderDetail/$', views_order_detail),
    # url(r'^endOrder/$', views_end_order),
    # url(r'^delOrder/$', views_del_order),
    url(r'^managerLogin/$', views_manager_login),
    url(r'^managerLogout/$', views_manager_logout),
    url(r'^nowLogin/$', views_get_now_login_name),
    url(r'^changePassword/$', views_change_password),
    url(r'^uploadImage/$',views_upload_image),
    url(r'^addAd/$', views_add_ad),
    url(r'^listAd/$', views_list_ad),
    url(r'^getPersonLoveTop/$', views_get_person_love_top),
    url(r'^onsaleGood/$', views_onsale_good),
    url(r'^delonsaleGood/$', views_delonsale_good),


    url(r'^wxlistGood/$', views_wx_listgood),
    url(r'^wxlistonsaleGood/$', views_wx_List_onsaleGood),
    url(r'^wxlistType/$', views_wx_listype),
    url(r'^wxGoodDetail/$', views_wx_good_detail),
    url(r'^wxisNotRepeteToLove/$', views_wx_is_love),
    url(r'^wxaddLove/$', views_wx_add_love),
    url(r'^wxgetloveList/$', views_wx_get_love_list),
    url(r'^wxdellove/$', views_wx_del_love),
    url(r'^wxgetadd/$', views_wx_get_ad)







]
