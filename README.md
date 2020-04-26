My AnsibleProject

In this project I created 3 playbooks. 
  First one called database.yml which you can play to set up MariaDB on the instance as remote database for wordpress
also it will create databases and users for every webserver that you entered in hosts.txt.
  Second one called webservers.yml when playing it will set up Apache webserver, PHP and unarchive wordpress into /var/www/html 
also it will create wp-config.php for every webserver depending on database you want it to connect.
  Third one called loadbalancer.yml this playbook will install a nginx on the instance you entered and configure it so it will
balance between two or more webservers which are defined in hosts.txt below "[webservers]" line.

To make everything work you need:
1) change hosts.txt
  You have to insert your instance ip in every ansible_host depending on what this instance is gonna be. 
  Note: you can insert as many webservers as you want.
2) change group_vars/all
  Insert name of your user as ansible_user, path to ssh key (which you need to connect to your instances) as ansible_ssh_private_key_file, 
database user as DB_USER and database user's password as DB_PASSWORD.
  Note: all my instances have the same ssh key if you have different ssh key's or usernames you have to create different group variables 
for each group that are different from ['all']. 

After all that you can execute ansible playbooks one by one in the order you want or you can execute inst_all.sh.

This playbook was created for Ubuntu, 18.04 LTS
