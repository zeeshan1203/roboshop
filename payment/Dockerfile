FROM        python:3.6
RUN         mkdir /app
WORKDIR     /app
ADD         payment.py rabbitmq.py requirements.txt payment.ini ./
RUN         pip3 install -r requirements.txt
CMD         ["uwsgi", "--ini", "payment.ini"]
