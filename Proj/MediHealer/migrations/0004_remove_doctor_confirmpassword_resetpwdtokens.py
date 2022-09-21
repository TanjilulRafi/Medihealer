# Generated by Django 4.0.5 on 2022-08-22 16:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('MediHealer', '0003_rename_username_doctor_username_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='doctor',
            name='ConfirmPassword',
        ),
        migrations.CreateModel(
            name='ResetPwdTokens',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('forget_password_token', models.CharField(max_length=100)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='MediHealer.doctor')),
            ],
            options={
                'db_table': 'reset_pwd_tokens',
            },
        ),
    ]