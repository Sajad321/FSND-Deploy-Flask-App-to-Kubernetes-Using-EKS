FROM python:3.7.2

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pyjwt
RUN pip install gunicorn


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
