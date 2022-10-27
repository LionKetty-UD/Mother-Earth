if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/LionKetty-UD/Mother-Earth.git /Mother-Earth
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Mother-Earth
fi
cd /Mother-Earth
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
