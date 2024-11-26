FROM python:3.9-alpine 

RUN mkdir /var/flask-app/

WORKDIR /var/flask-app/

COPY . .

RUN apk update && pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3","app.py"]
