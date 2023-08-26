#! /bin/bash

git clone https://github.com/achraffaris/resume-django-tailwind.git;

pip install virtualenv;

cd resume-django-tailwind

virtualenv env;

source env/bin/activate;

cd web/;

pip install -r requirements.txt;

deactivate;