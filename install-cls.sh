#!/usr/bin/env bash
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' wget|grep "install ok installed")
echo Checking for wget: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "wget not found. Setting up wget."
  sudo apt-get --force-yes --yes install wget
fi
wget -O /usr/bin/cls https://git.io/
wget -O /usr/share/man/man1/cls.1.gz https://git.io/