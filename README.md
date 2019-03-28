# yawoen_whoami
Esse é a solução para a Yaweon!

## Preparando o ambiante
1 - Criar uma instância Ubuntu Bionic 18.04 t2.micro na AWS;

2 - Instalar o Docker conforme abaixo:
```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

$ sudo apt-get install docker-compose -y
```
3 - Baixar os arquivos para o funcionamento completo da solução:
```
$ git clone https://github.com/educojr/yawoen_whoami.git
```
4 - Adicionar as linhas abaixo no crontab do root:
```
# Aplicacao whomai
*/5 * * * * sudo bash /home/ubuntu/yawoen_whoami/app.sh
```
