FROM python:3.12.3
RUN pip install django==5.0.7
copy . .
EXPOSE 8000
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
