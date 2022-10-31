echo "Waiting for setup background script to finish"
while [ ! -f /tmp/background0 ]; do sleep 1; done
bash startup.sh