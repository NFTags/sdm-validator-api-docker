FROM tiangolo/uwsgi-nginx-flask:python3.7-2022-04-21

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache -r /tmp/requirements.txt

EXPOSE 8080

COPY . /app
COPY uwsgi.docker.ini /app/uwsgi.ini
COPY config.docker.py /app/config.py
