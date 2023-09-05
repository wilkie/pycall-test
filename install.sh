#!/bin/bash

set -eu

bundle install

python -m venv pybin
source ./pybin/bin/activate
pip install -r requirements.txt
