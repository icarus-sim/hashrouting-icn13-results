#!/bin/sh
#
# This script installs all Icarus dependencies
#
# It has been tested successfully only on Ubuntu 12.04+.
#
sudo apt-get install python ipython python-pip python-numpy python-scipy python-matplotlib python-nose python-sphinx python-networkx
sudo pip install -U fnss numpydoc