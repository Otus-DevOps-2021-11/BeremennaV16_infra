# BeremennaV16_infra
BeremennaV16 Infra repository
Для подключения к someinternalhost из cli локального устройста были внесены изменения в .ssh/config, а именно
Host bastion
	Hostname 62.84.125.225
	ForwardAgent yes
	IdentityFile ~/.ssh/first_machine
	User bastion
Host someinternalhost
        Hostname 10.128.0.35
        ForwardAgent yes
        IdentityFile ~/.ssh/first_machine
        User bastion
	ProxyCommand ssh -W %h:22 bastion
Добавлены альясы обеих VM, просисан путь до ssh ключа, для второй машины прописаны свойства входа, а именно авторизация через bastion host.
Можно обойтись без этого, но тогда каждый раз, когда нужно будет зайти на someinternalhost придется вбивать команду ssh полностью указываб форвард ключа, что неудобно.
#VPN credentials
User:test
password:6214157507237678334670591556762
bastion_IP = 62.84.125.225
someinternalhost_IP = 10.128.0.35


testapp_IP = 62.84.116.40
testapp_port = 9292



#7 Модели управления инфраструктурой. Подготовка образов с помощью Packer

Написан код, для создания образа с предустановленными в него ruby и mongodb. Путь к service_account_key_file был задан переменной окружения и после передан в variables.json.

#8 Знакомство с Terraform

Написан код для создания VM используя образ написанный в прошлом задании по Packer. 
