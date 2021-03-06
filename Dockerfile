FROM python:3.8


WORKDIR /app


COPY requirements.txt /app

RUN python -m pip install -r requirements.txt

COPY . /app

WORKDIR /app/calender


CMD [ "gunicorn", "calender.wsgi" ]