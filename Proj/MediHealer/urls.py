from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [
    path('',views.home,name="home"),
    path('homee',views.homee,name="homee"),
    path('about',views.about,name="about"),
    path('contact',views.contact,name="contact"),
    path('back',views.back,name="back"),
    path('backp',views.backp,name="backp"),
    path('homep',views.homep,name="homep"),
    path('doctor',views.doctor,name="doctor"),
    path('patient',views.patient,name="patient"),
    path('signup',views.signup,name="signup"),
    path('signupp',views.signupp,name="signupp"),
    path('signin',views.signin,name="signin"),
    path('signinp',views.signinp,name="signinp"),
    path('signout',views.signout,name="signout"),
    path('viewprofiled',views.viewprofiled,name="viewprofiled"),
    path('viewprofilep',views.viewprofilep,name="viewprofilep"),
    path('viewapp',views.viewapp,name="viewapp"),
    path('change_password',views.change_password,name="change_password"),
    path('delete_account/<int:id>',views.delete_account,name="delete_account"),
    path('delete_accountp/<int:id>',views.delete_accountp,name="delete_accountp"),
    path('make_appointment',views.make_appointment,name="make_appointment"),
]
