if [ -d /opt/aegir-ci ]
then
  echo "You have already installed Aegir CI"
  exit
fi

if [ `whoami` != root ]
then
  echo "You must run the install script as root"
  exit
fi

echo "Installing git"

/usr/bin/env apt-get update
/usr/bin/env apt-get install --yes git-core

echo "Installing Aegir-CI"
/usr/bin/env git clone git://github.com/darthsteven/aegir-ci.git -b master /opt/aegir-ci

echo "Setting up Aegir-CI"
cd /opt/aegir-ci && /usr/bin/env python setup.py
