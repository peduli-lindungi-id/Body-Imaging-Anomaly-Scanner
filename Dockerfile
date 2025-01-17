FROM python:3.7.10

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=main

ENTRYPOINT [ "./gunicorn.sh" ]
