#!/bin/bash

# Prompt user for remote username
read -p "Enter remote username: " username

# Prompt user for destination directory
read -p "Enter destination directory: " destination

# Run rsync command
rsync -avz --delete -e 'ssh -p 4422' . "$username@sc2.npad.ufrn.br:$destination"