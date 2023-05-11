#! /bin/bash


# Actualizar repositorios
sudo apt update


# Google-chrome-stable
sudo apt install wget -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable -y


# Volvemos a la ruta inicial
cd


# Iniciamos kodi con el sistema
cd .config
cd openbox
touch autostart
echo 'google-chrome-stable' > autostart


# Eliminar el Entorno de Escritorio lubuntu
sudo apt-get remove lubuntu* -y
sudo apt-get autoremove --purge -y
# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lx* -y
sudo apt-get autoremove --purge -y
# Eliminar el Entorno de Escritorio gnome
sudo apt-get remove gnome* -y
sudo apt-get autoremove --purge -y
# En caso que te hallas quedado sin servidor grafico
sudo apt-get install xorg -y


# Actualizamos los paquetes
sudo apt upgrade -y


# Eliminamos las imagenes de nuestra distribucion
cd /usr/share/plymouth/
sudo rm ubuntu-logo.png
sudo rm -r themes/


# Reiniciamos
reboot


# Atajos del teclado

# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7