FROM python:3.8


WORKDIR /


RUN pip install -r requirements.txt




CMD [ "gunicorn", "calender.wsgi" ]