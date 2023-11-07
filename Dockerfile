FROM python:3.12-bookworm

RUN apt-get update -y \
  && apt-get upgrade -y

COPY requirements.txt /opt/app/requirements.txt
WORKDIR /opt/app
RUN pip install -r requirements.txt

COPY . /opt/app

CMD [ "python", "./lichess-bot.py" ]
