#!/bin/bash

# site:
#     type: user_program
#     command: source config.env && gunicorn -k roll.worker.Worker copanier:app --bind [$IP]:$PORT
#     python_version: '3.7'

set -e

# Python environment
python -m venv env
source env/bin/activate
git clone https://github.com/spiral-project/copanier.git
cd copanier
pip install -e .