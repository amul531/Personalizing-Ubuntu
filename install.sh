http://www.cyberciti.biz/faq/howto-install-mysql-on-ubuntu-linux-16-04/
http://ubuntuportal.com/2013/12/how-to-install-xampp-1-8-3-for-linux-in-ubuntu-desktop.html
https://help.ubuntu.com/lts/serverguide/tomcat.html

#make this file executable (initially not exec)
#chmod +x install.sh(filename)
#then run as sudo ./filename


#update [Update Repository Index]
apt-get update

#upgrade [Update System Packages to Latest Version]
apt-get upgrade 

#install unity tweak tool (GUI) for desktop customizations etc
apt-get install unity-tweak-tool

#install Flash player
apt-get install flashplugin-installer


#install vim and git
apt-get install -y vim git
#add -y to every install to avoid being prompted for a yes

#setup git(??)

#install sublime from debain folder 
#(get the deb from the address given)
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
dpkg -i sublime-text_build-3114_amd64.deb
#debian package manager, install 

#install skype
wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
dpkg -i getskype-*
apt-get -f install -y
#-f stands for fix install

#install itunes


#install vlc
apt-get install -y vlc browser-plugin-vlc

#install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i ./google-chrome*.deb
apt-get install -f


#https://www.digitalocean.com/community/tutorials/how-to-install-java-on-ubuntu-with-apt-get
#install java
apt-get install -y default-jre
apt-get install -y default-jdk

#install pip
apt-get install -y python-pip python-dev build-essential
pip install --upgrade pip

#install numpy, scipy, matplotlib, ipython, pandas
apt-get install -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

#install scikit-learn
pip install -U  scikit-learn

#install theano
pip install Theano

#install h5py (needed for keras)
pip install h5py

#http://www.pyimagesearch.com/2016/07/18/installing-keras-for-deep-learning/
#install keras
pip install keras

##########point is doing this is it has a bunch of python libs including ipython notebook. But instead can just install jupyter!
#install anaconda
#wget http://repo.continuum.io/archive/Anaconda2-4.1.1-Linux-x86_64.sh
#bash Anaconda2-4.1.1-Linux-x86_64.sh

#install jupyter for ipython notebook
pip install jupyter

#######################################
#https://www.tensorflow.org/versions/r0.10/get_started/os_setup.html#pip-installation
#CUDA installation currently not available for this version of ubuntu -16.04 LTS (so cannot install the GPU version of tensorflow)
#install tensorflow
# Ubuntu/Linux 64-bit, CPU only, Python 2.7
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl

#https://github.com/tensorflow/tensorflow/blob/master/tensorflow/g3doc/get_started/os_setup.md
# Ubuntu/Linux 64-bit, GPU enabled, Python 2.7
# Requires CUDA toolkit 7.5 and CuDNN v4. For other versions, see "Install from sources" below.
#export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl

pip install --upgrade $TF_BINARY_URL


#####Eclipse launcher shortcut
#First, create a .desktop file to eclipse:
gedit ~/.local/share/applications/eclipse.desktop
#Then, paste this inside (dont forget to edit Exec and Icon values):

#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
StartupNotify=true
Icon=<path-to-eclipse-install>/icon.xpm
Name=Eclipse
#Exec=env UBUNTU_MENUPROXY=0 <path-to-eclipse-install>/eclipse
Exec=env <path-to-eclipse-install>/eclipse

#add execution permission via cmd-line
chmod +x ~/.local/share/applications/eclipse.desktop

#open the folder where this is with nautilus and drag $ drop it in the launcher
nautilus ~/.local/share/applications