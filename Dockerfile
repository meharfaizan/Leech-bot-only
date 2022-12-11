FROM python:3.10.5-slim-buster
RUN apt -qq update --fix-missing && apt -qq install -y git aria2 wget curl busybox unzip unrar tar python3 ffmpeg python3-pip p7zip-full p7zip-rar
RUN apt -qq install -y git aria2
WORKDIR .
COPY . .
RUN apt -qq update --fix-missing && apt -qq install -y git aria2 wget curl busybox unzip unrar tar python3 ffmpeg python3-pip p7zip-full p7zip-rar
RUN pip3 install -r requirements.txt
RUN sudo apt install -y aria2
RUN git clone https://github.com/aria2/aria2.git
CMD ["python3", "-m tobrot"]
