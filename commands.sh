#!/usr/bin/env bash

# Setup commands to deploy the Flask ML App

# Clone the Repo
git clone git@github.com:Nsikan-Dev/nsikan-ci-cd-pipeline.git

# Create the virtual environment
python3 -m venv ~/.nsikan-ci-cd

# Activate the virtual environment
source ~/.nsikan-ci-cd/bin/activate

# cd into project directory
cd nsikan-ci-cd-pipeline

# Run makefile
make install

# Create spp service and deploy app
az webapp up -n nsikan-ci-cd
