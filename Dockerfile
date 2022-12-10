FROM python:3.10.5-slim-buster

WORKDIR .
COPY . .
RUN apt -qq update --fix-missing && apt -qq install -y git aria2 wget curl busybox unzip unrar tar python3 ffmpeg python3-pip p7zip-full p7zip-rar
RUN pip3 install -r requirements.txt

CMD ["python3", "-m tobrot"]
