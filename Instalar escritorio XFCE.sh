#!/bin/bash
#
#
# Instalado en CentOS 6

############ Actualizando el sistema y paquetería básica #################################

yum update -y
yum install -y wget nano bind-utils firefox libreoffice evince man samba-client cifs-utils

#
############ Instalando Escritorio y fuentes #############################################

wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh *.rpm
yum groupinstall -y Xfce
yum groupinstall -y "X Window System"
yum install -y xorg-x11-fonts-Type1 xorg-x11-fonts-misc

#
########### Deshabilitando SeLinux y Firewall ############################################

chkconfig --levels 235 iptables off
sed -i 's/SELINUX=.*/SELINUX=disabled/' /etc/sysconfig/selinux

reboot   ## reinicia 

