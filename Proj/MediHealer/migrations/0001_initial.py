# Generated by Django 4.0.5 on 2022-07-25 20:29

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Doctor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Username', models.TextField(max_length=15)),
                ('FirstName', models.TextField(max_length=50)),
                ('LastName', models.TextField(max_length=50)),
                ('Email', models.EmailField(max_length=50)),
                ('Phone', models.CharField(max_length=15)),
            ],
        ),
    ]