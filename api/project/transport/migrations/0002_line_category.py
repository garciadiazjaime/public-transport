# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('transport', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='line',
            name='category',
            field=models.IntegerField(default=0, choices=[(1, b'Taxy'), (2, b'Camion'), (3, b'Calafia')]),
        ),
    ]
