if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Asnetwork22/Asn/tree/TECH_VJ /Asn
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Asn
fi
cd /Asn
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
