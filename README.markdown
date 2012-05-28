Aegir-ci
========

A setup script for Aegir's Continuous integration server.

Installation
------------

### Automatic installation

You can install this via the command line with either 'curl' or 'wget'.

#### via curl

    curl -L https://github.com/darthsteven/aegir-ci/raw/master/tools/install.sh | sh

#### via wget

    wget --no-check-certificate https://github.com/darthsteven/aegir-ci/raw/master/tools/install.sh -qO - | sh

### Manual installation

(as root)

    apt-get update
    apt-get install git-core
    git clone git://github.com/darthsteven/aegir-ci.git -b dev /opt/aegir-ci
    cd /opt/aegir-ci
    python setup.py
