from re import A
from django.contrib.auth.models import User
from django.contrib import messages
from django.shortcuts import redirect, render
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.hashers import make_password
from django.contrib.auth.hashers import check_password
from MediHealer.models import Doctor
from MediHealer.models import Patient
from MediHealer.models import appointment
from .helper import send_forgot_password
import uuid
from django.contrib.auth.decorators import login_required
# Create your views here.
def home(request):
    return render(request,"index.html")

def about(request):
    return render(request,"about.html")

def contact(request):
    return render(request,"contact.html")

def back(request):
    return render(request,"homee.html")

def backp(request):
    return render(request,"homep.html")

def homee(request):
    return render(request,"homee.html")

def homep(request):
    return render(request,"homep.html")

def doctor(request):
    return render(request,"doctor.html")

def patient(request):
    return render(request,"patient.html")

def signup(request):
    if request.method == "POST":
        username=request.POST['username']
        fname=request.POST['fname']
        lname=request.POST['lname']
        medical=request.POST['medical']
        wmedical=request.POST['wmedical']
        address =request.POST['address']
        specialized =request.POST['specialized']
        email=request.POST['email']
        phone=request.POST['phone']
        pass1=make_password(request.POST['pass1'])
        pass2=make_password(request.POST['pass2'])

        
        if Doctor.objects.filter(username=username):
            messages.error(request,"Username already exist")
            return render('signup')
        
        if len(username)>15:
            messages.error(request,"Username should be under 15 characters")
            
        if check_password(pass1,pass2):
            messages.error(request,"Password does't match")
            return redirect('signup')
        

        myuser = Doctor()
        myuser.username = username
        myuser.FirstName=fname
        myuser.LastName=lname
        myuser.Email = email
        myuser.Phone = phone
        myuser.MedicalFrom = medical
        myuser.WorkingMedical = wmedical
        myuser.Address = address
        myuser.Specialized = specialized
        myuser.password = pass1
        myuser.save()
        messages.success(request,"Your Account has been successfully created")
        return redirect('signin')

    return render(request,"signup.html")

def signupp(request):
    if request.method == "POST":
        username=request.POST['username']
        fname=request.POST['fname']
        lname=request.POST['lname']
        address =request.POST['address']
        nid = request.POST['nid']
        email=request.POST['email']
        phone=request.POST['phone']
        pass1=make_password(request.POST['pass1'])
        pass2=make_password(request.POST['pass2'])

        
        if Patient.objects.filter(username=username):
            messages.error(request,"Username already exist")
            return render('signupp')
        
        if len(username)>15:
            messages.error(request,"Username should be under 15 characters")
            
        if check_password(pass1,pass2):
            messages.error(request,"Password does't match")
            return redirect('signupp')
        

        myuser = Patient()
        myuser.username = username
        myuser.FirstName=fname
        myuser.LastName=lname
        myuser.Email = email
        myuser.Phone = phone
        myuser.Address = address
        myuser.NID = nid
        myuser.password = pass1
        myuser.save()
        messages.success(request,"Your Account has been successfully created")
        return redirect('signinp')

    return render(request,"signupp.html")


def signin(request):
    if request.method =='POST':
        try:
            user = Doctor.objects.get(username = request.POST.get('username'))
            if check_password(request.POST.get('password'),(user.password)):
                request.session['username'] = user.username
                return render(request, 'homee.html',{'user':user})
            else:
                messages.error(request,'Password incorrect...')
        except Doctor.DoesNotExist as e:
            messages.error(request,'No user found')    
    return render(request,"signin.html")

def signinp(request):
    if request.method =='POST':
        try:
            user = Patient.objects.get(username = request.POST.get('username'))
            if check_password(request.POST.get('password'),(user.password)):
                request.session['username'] = user.username
                return render(request, 'homep.html',{'user':user})
            else:
                messages.error(request,'Password incorrect...')
        except Patient.DoesNotExist as e:
            messages.error(request,'No user found')    
    return render(request,"signinp.html")

def signout(request):
    logout(request)
    messages.success(request,"Logged out successfully")
    return redirect('home')

#profile view
def viewprofiled(request):
    
        user = Doctor.objects.get(username=request.session['username'])
        return render(request, 'viewprofiled.html', {'user': user})
    
def viewprofilep(request):
        user = Patient.objects.get(username=request.session['username'])
        return render(request, 'viewprofilep.html', {'user': user})
    
    
def viewapp(request):
        result = appointment.objects.filter(appfor=request.session['username'])
        return render(request, 'appl.html', {'appointment': result})
    
#change password 
def change_password(request):
    if request.method == 'POST':
        newpass = request.POST['newpass']
        try:
            user = Doctor.objects.get(id = request.Doctor.id)
            if check_password(request.POST.get('password'),(user.password)) :
                user.password.delete()
                user.password = make_password(newpass)
                user.password.save()
                messages.success(request,"Password changed successfully")
                return redirect('signout')
            else:
                messages.error(request,"Password doesn't match")
                return redirect('change_password')
            
        except Doctor.DoesNotExist as e:
            messages.error(request,"No user found")
            return redirect('change_password')
    return render(request, 'changepass.html')
        
def make_appointment(request):
    if request.method == "POST":
        fname=request.POST['fname']
        lname=request.POST['lname']
        email=request.POST['email']
        phone=request.POST['phone']
        appfor =request.POST['appfor']
        date=request.POST['date']
        time=request.POST['time']
        
        myuser = appointment()
        myuser.firstname=fname
        myuser.lastname=lname
        myuser.email = email
        myuser.phone = phone
        myuser.appfor = appfor
        myuser.date = date
        myuser.time = time
        myuser.save()
        messages.success(request,"You have successfully made an appointment")
        return redirect('homee')  
    return render(request,"make_appointment.html")

def delete_account(request,id):
    delid = Doctor.objects.get(id=id)
    delid.delete()
    messages.success(request,"User deleted successfully")
    return redirect('home')

def delete_accountp(request,id):
    delid = Patient.objects.get(id=id)
    delid.delete()
    messages.success(request,"User deleted successfully")
    return redirect('home')
