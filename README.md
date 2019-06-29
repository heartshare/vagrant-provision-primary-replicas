# Provisioning MariaDB primary-replica replication + MaxScale / CentOS 7 with Vagrant / Ansible

## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VMware Workstation Pro](https://www.vmware.com/products/workstation.html)
* [Ansible](https://www.ansible.com/)

## create VM and provision MariaDB 10.3 Server on CentOS 7

* vagrant up

## SSH login to the VM

* vagrant ssh [mxs1|mxs2|server1|server2|server3]

## rsync Vagrant files and folders between local and target hosts

* vagrant rsync

## Reference
* https://www.vagrantup.com/docs/provisioning/ansible_intro.html
* https://mariadb.com/kb/en/mariadb-enterprise/mariadb-maxscale-22-automatic-failover-with-mariadb-monitor/
* https://mariadb.com/kb/en/mariadb-enterprise/mariadb-maxscale-22-mariadb-maxscale-ha-with-lsyncd/
* https://mariadb.com/resources/blog/mariadb-maxscale-masking-and-firewall/
