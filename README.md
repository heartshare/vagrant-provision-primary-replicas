# Provisioning MariaDB Master-Slave replication + MaxScale 2.2 / CentOS 7 with Vagrant / Ansible

## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VMware Workstation 12 Pro](https://www.vmware.com/products/workstation.html)
* [Ansible](https://www.ansible.com/)

## create a VM and provision MariaDB 10.2 Server on CentOS 7

* vagrant up

## SSH login to the VM

* vagrant ssh [mxs|node1|node2|node3]

## rsync Vagrant files and folders between local and target hosts

* vagrant rsync

## Reference
* https://www.vagrantup.com/docs/provisioning/ansible_intro.html
* https://mariadb.com/kb/en/mariadb-enterprise/mariadb-maxscale-22-automatic-failover-with-mariadb-monitor/ 
