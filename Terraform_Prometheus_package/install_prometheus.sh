#! /bin/bash
sudo yum update -y
sudo useradd --no-create-home node_exporter
cd /opt
curl -LO https://nodeexporter url to download
tar xvf node_exporter.tar.gz
cp node_exporter /usr/local/bin/
cat <<EOF | sudo tee /etc/system/system/node_exporter.service
[Unit]
Description=Node Exporter
After=network.target

[Service]
User=node_exporter
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=default.target
EOF
sudo systemctl daemon-reexec
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
