# Generated by Django 3.2.7 on 2021-11-09 13:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0009_alter_game_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='account',
            name='avatar',
            field=models.CharField(max_length=250, null=True),
        ),
    ]
