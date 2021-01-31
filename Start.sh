#!/bin/bash

# Script to install everything needed to start Developing Android and Arduino

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git
git clone https://github.com/akhilnarang/scripts && cd scripts
bash setup/android_build_env.sh
cd
echo Installing Android SDKs and ALL Tools
#
mkdir -p ~/android/sdk/cmdline-tools
#
cd ~/android/sdk/cmdline-tools
#
curl -O https://dl.google.com/android/repository/commandlinetools-linux-6514223_latest.zip
#
echo 'ef319a5afdb41822cb1c88d93bc7c23b0af4fc670abca89ff0346ee6688da797  commandlinetools-linux-6514223_latest.zip' | sha256sum -c
#
unzip commandlinetools-linux-6514223_latest.zip
rm commandlinetools-linux-6514223_latest.zip
mv tools latest
echo "export PATH=home/default/android/sdk/cmdline-tools/latest/bin:$PATH" >> .profile
echo "export PATH=$PATH:/home/default/android/sdk/cmdline-tools/latest/bin:$PATH" >> .profile
echo "export PATH=$PATH:/home/default/android/platform-tools:$PATH" >> .profile
echo "export PATH=$PATH:/home/default/android/sdk/build-tools/30.0.2:$PATH" >> .profile
echo "export PATH=$PATH:/home/default/android/sdk/ndk-bundle:$PATH" >> .profile
echo "export PATH=$PATH:/home/default/android/studio/bin:$PATH" >> .profile


