echo "Cloning Repo...."
git clone https://github.com/meharfaizan/Leech-bot-only
cd /Leech-bot-only
apt -qq update --fix-missing && apt -qq install -y git aria2 wget curl busybox unzip unrar tar python3 ffmpeg python3-pip p7zip-full p7zip-rar
pip3 install -r requirements.txt
echo "Starting Bot...."
python3 -m tobrot
