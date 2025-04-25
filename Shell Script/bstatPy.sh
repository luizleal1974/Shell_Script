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

## Instalar pacotes do Python
python_prog(){
sudo apt install python3-pip -y
pip install scipy
pip install pandas
pip install statistics
pip install plotly
pip install matplotlib
pip install seaborn
pip install numpy
pip install statsmodels
pip install xlrd
pip install openpyxl
pip install lxml
pip install scikit-learn
}

## Executar shell script
os_update
python_prog

## Mensagem
echo "INSTALACAO CONCLUIDA"
