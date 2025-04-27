#!/bin/bash

## Curso de Estatistica
## Adequado para sistemas operacionais baseados no Ubuntu.
## Copyright 2025 Luiz Henrique Leal.
## Permitir execucao do arquivo como um programa.

## Atualizar sistema
os_update(){
sudo apt update
sudo apt upgrade -y
}

## Instalar R e dependencias
r_prog(){
sudo apt update -qq
sudo apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install --no-install-recommends r-base -y

sudo apt install gfortran -y
sudo apt install cmake -y
sudo apt install rustc -y
sudo apt install cargo -y
sudo apt install libcurl4-openssl-dev
sudo apt install libxml2-dev -y
sudo apt install libfontconfig1-dev -y
sudo apt install libharfbuzz-dev -y
sudo apt install libfribidi-dev
sudo apt install libfreetype6-dev -y
sudo apt install libpng-dev
sudo apt install libtiff5-dev -y
sudo apt install libjpeg-dev -y
sudo apt install libblas-dev
sudo apt install liblapack-dev
sudo apt install libgmp-dev -y
sudo apt install libmpfr-dev -y
sudo apt install libmagick++-dev -y
sudo apt install r-base-dev -y
sudo apt install default-jdk -y
sudo apt install default-jre -y
sudo apt install libssl-dev
}

## Executar shell script
os_update
r_prog

## Mensagem
echo "INSTALACAO CONCLUIDA"
