echo "Cloning Repo...."
git clone https://github.com/meharfaizan/Leech-bot-only
cd /Leech-bot-only
apt -qq install -y git aria2
pip3 install -r requirements.txt
echo "Starting Bot...."
python3 -m tobrot
