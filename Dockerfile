FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y && apt install -y git

# Copy all files into the working directory
COPY . /shobanafilterbot

WORKDIR /shobanafilterbot

# Install Python requirements
RUN pip3 install -U pip && pip3 install -r requirements.txt

# Start the bot
CMD ["python3", "bot.py"]
