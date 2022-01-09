#!/bin/bash

pip3 install requirements.txt

sudo mkdir -p /opt/pyplot-env
sudo cp *.py /opt/pyplot-env/

if (($(cat ~/.bashrc | grep "pyplot-env" | wc -l) == 0));
then
    echo 'export PYTHONPATH="${PYTHONPATH}:/opt/pyplot-env"' >> ~/.bashrc
fi