FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y

COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

RUN mkdir /shobanafilterbot
WORKDIR /shobanafilterbot

COPY /shobanafilterbot/bot.py
COPY start.sh /start.sh

CMD ["python3", "bot.py"]
