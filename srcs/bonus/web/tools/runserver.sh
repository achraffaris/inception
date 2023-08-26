#! /bin/bash

cd resume-django-tailwind;

source env/bin/activate;

cd web;

python manage.py migrate;

python manage.py runserver 0.0.0.0:8000
