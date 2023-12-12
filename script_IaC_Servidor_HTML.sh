#!/bin/bash
echo "**** Script de criação de um servidor Web ****"
echo ""
echo ""
echo "********** Atualizando o servidor **********"
apt update -y && apt upgrade -y
echo ""
echo "*********** Servidor atualizado! ***********"
echo " *** Pressione uma tecla para continuar ***"
pause
echo ""
echo ""
echo "*** Instalando o servico Apache (httpd) ***"
echo ""
apt install apache2 -y
echo ""
echo ""
echo "**************** Servico Apache (httpd) instalado com sucesso ********************"
echo ""
echo "****************** Verificando se o servico esta no ar ***************************"
echo ""
systemctl restart apache2 && systemctl status apache2
echo ""
echo "** Verifique se o servico esta como "active" antes de dar sequencia ao processo. **"
echo "******************** Pressione uma tecla para continuar ***************************"
echo ""
pause
echo ""
echo ""
echo "*********************** Instalando o aplicativo unzip *****************************"
echo ""
apt install unzip -y
echo ""
echo "******************* Aplicativo unzip instalado com sucesso  ***********************"
echo ""
echo ""
echo " ************* Fazendo download da aplicacao web para o diretório /tmp ************"
echo ""
echo ""
wget -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo ""
echo ""
echo "************** Descompactando os arquivos no diretório /var/www/html ***************"
echo ""
echo ""
unzip /tmp/main.zip -d /tmp/
mv -f /tmp/linux-site-dio-main/* /var/www/html/
echo ""
echo ""
echo "********************** Arquivos descompactados com sucesso **************************"
echo ""
echo ""
echo "************* Termino da execucao do script de criacao de servidor WEB **************" 
echo ""
