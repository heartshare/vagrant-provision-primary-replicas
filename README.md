# Provisioning MariaDB primary-replicas + 2 MaxScale / CentOS 7 with Vagrant / Ansible

MaxScale HA config w/ Keepalived

## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VMware Workstation Pro](https://www.vmware.com/products/workstation.html)
* [Ansible](https://www.ansible.com/)

## create VM and provision MariaDB 10.4 Server on CentOS 7

* vagrant up

## SSH login to the VM

* vagrant ssh [mxs1|mxs2|server1|server2]

## rsync Vagrant files and folders between local and target hosts

* vagrant rsync

## References
* https://www.vagrantup.com/docs/provisioning/ansible_intro.html
* https://mariadb.com/kb/en/mariadb-enterprise/mariadb-maxscale-24-automatic-failover-with-mariadb-monitor/
* https://mariadb.com/resources/blog/mariadb-maxscale-masking-and-firewall/
* https://mariadb.com/resources/blog/maxscale-ha-setup-using-keepalived-and-maxctrl/
