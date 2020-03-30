#!/bin/bash
sudo ansible-playbook database.yml
sudo ansible-playbook webservers.yml
sudo ansible-playbook loadbalancer.yml

