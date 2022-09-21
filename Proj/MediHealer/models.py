
from django.db import models

# Create your models here.
class Doctor(models.Model):
    username = models.TextField(max_length=15)
    FirstName = models.TextField(max_length=50)
    LastName = models.TextField(max_length=50)
    Email = models.EmailField(max_length=50)
    Phone = models.CharField(max_length=15)
    MedicalFrom = models.TextField(max_length=100,default="DEFAULT VALUE")
    WorkingMedical = models.TextField(max_length=100,default="DEFAULT VALUE")
    Address = models.TextField(max_length=100,default="DEFAULT VALUE")
    Specialized = models.TextField(max_length=100,default="DEFAULT VALUE")
    password = models.CharField(max_length=1050,default="DEFAULT VALUE")
    
    class Meta:
        db_table = 'DoctorTable' #table name

class Patient(models.Model):
    username = models.TextField(max_length=15)
    FirstName = models.TextField(max_length=50)
    LastName = models.TextField(max_length=50)
    Email = models.EmailField(max_length=50)
    NID = models.CharField(max_length=20)
    Phone = models.CharField(max_length=15)
    Address = models.TextField(max_length=100,default="DEFAULT VALUE")
    password = models.CharField(max_length=1050,default="DEFAULT VALUE")
    
    class Meta:
        db_table = 'patienttable' #table name        

        
class appointment(models.Model):
    firstname = models.TextField(max_length=15)
    lastname = models.TextField(max_length=15)
    phone = models.CharField(max_length=15)
    email = models.EmailField(max_length=50)
    appfor = models.TextField(max_length=15)
    date = models.DateField()
    time = models.TimeField()
    class Meta:
        db_table = 'appointmentTable' #table name
        
class Profile(models.Model):
    user = models.OneToOneField(Doctor, on_delete=models.CASCADE)  
    def __str__(self):
        return self.user.username    