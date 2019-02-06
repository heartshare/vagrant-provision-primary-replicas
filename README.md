<<<<<<< HEAD
# Provisioning MariaDB 10.3 Master-Slave replication + MaxScale HA / CentOS 7 with Vagrant / Ansible
=======
# Provisioning MariaDB Master-Slave replication + MaxScale / CentOS 7 with Vagrant / Ansible
>>>>>>> github/master

## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
<<<<<<< HEAD
* [VMware Workstation Pro](https://www.vmware.com/products/workstation.html)
* [Ansible](https://www.ansible.com/)

## create VM and provision MariaDB 10.3 Server on CentOS 7
=======
* [VMware Workstation 12 Pro](https://www.vmware.com/products/workstation.html)
* [Ansible](https://www.ansible.com/)

## create a VM and provision MariaDB 10.2 Server on CentOS 7
>>>>>>> github/master

* vagrant up

## SSH login to the VM

<<<<<<< HEAD
* vagrant ssh [mxs1|mxs2|server1|server2|server3]
=======
* vagrant ssh
>>>>>>> github/master

## rsync Vagrant files and folders between local and target hosts

* vagrant rsync

## Reference
* https://www.vagrantup.com/docs/provisioning/ansible_intro.html
<<<<<<< HEAD
* https://mariadb.com/kb/en/mariadb-enterprise/mariadb-maxscale-22-automatic-failover-with-mariadb-monitor/
* https://mariadb.com/kb/en/mariadb-enterprise/mariadb-maxscale-22-mariadb-maxscale-ha-with-lsyncd/
=======

>>>>>>> github/master
