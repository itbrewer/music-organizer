#!/bin/bash
apt update && apt upgrade -y
apt install -y python3 python3-pip chromaprint ffmpeg git
pip3 install -r /opt/music-organizer/requirements.txt
mkdir -p /opt/music-organizer
cd /opt/music-organizer
git clone https://github.com/yourusername/music-organizer.git . || echo "Clone skipped, place files manually."
cat << EOF > /etc/systemd/system/music-organizer.service
[Unit]
Description=Music Organizer Web Service
After=network.target
[Service]
WorkingDirectory=/opt/music-organizer
ExecStart=/usr/bin/python3 /opt/music-organizer/web_organizer.py
Restart=always
User=root
[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable music-organizer
systemctl start music-organizer
echo "Music Organizer deployed! Access at http://<LXC-IP>:5000"
