FROM python:3.8

WORKDIR /

RUN pip install -r requirements.txt

RUN cd calender

CMD [ "gunicorn", "calender.wsgi" ]