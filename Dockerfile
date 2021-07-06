FROM python:3.8

RUN pip install -r requirements.txt



WORKDIR ./calender




CMD [ "gunicorn", "calender.wsgi" ]