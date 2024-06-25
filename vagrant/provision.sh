#!/usr/bin/env bash


# Provision vagrant vm as root user

####################################################################################

## Update packages and install essentials

# Get latest package listings, post adding new repos
apt-get -y update

# Considered a sane build environment, by: https://github.com/rbenv/ruby-build/wiki
apt-get install -y autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

# Useful to have
apt-get install -y git curl

####################################################################################


####################################################################################

## Tidy up

# Remove packages that are no longer needed
apt-get autoremove -y

# Remove local package files, to keep size down
apt-get clean

####################################################################################