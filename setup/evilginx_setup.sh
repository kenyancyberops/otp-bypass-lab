#!/bin/bash

echo "[+] Installing dependencies..."
sudo apt update
sudo apt install git make golang-go -y

echo "[+] Cloning Evilginx2 repo..."
git clone https://github.com/kgretzky/evilginx2.git
cd evilginx2

echo "[+] Building Evilginx2..."
make

echo "[+] Move binary to /usr/bin for global access"
sudo cp ./bin/evilginx /usr/bin/evilginx

echo "[+] Setup complete. Type 'evilginx' to start."

💾 Permissions Note: After cloning the repo to your system later,
 run chmod +x evilginx_setup.sh before executing.


