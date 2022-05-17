FROM python:3.6-slim

RUN mkdir /app
WORKDIR /app

ADD requirements.txt requirements.txt
RUN pip3 install --upgrade pip -i https://pypi.doubanio.com/simple/ --trusted-host pypi.doubanio.com && \
    pip install -r requirements.txt -i https://pypi.doubanio.com/simple/ --trusted-host pypi.doubanio.com

ADD . .

ENV FLASK_APP main
EXPOSE 8080
ENTRYPOINT [ "flask", "run","-p","8080", "--host=0.0.0.0"]
