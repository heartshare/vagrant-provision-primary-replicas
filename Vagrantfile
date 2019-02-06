# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
<<<<<<< HEAD
  config.vm.box = 'centos/7'
#  config.vm.provider "virtualbox" do |vb|
#    vb.memory = 1024
#    vb.cpus = 1
#    vb.name = "Awesome Box"
#  end
  config.vm.provider :vmware_workstation do |v|
    v.vmx['memsize'] = '1024'
    v.vmx['numvcpus'] = 1
  end

  1.upto(1) do |i|
    config.vm.define "mxs#{i}" do |node|
      node.vm.hostname = "mxs#{i}"
      node.vm.network :private_network, ip:"192.168.2.23#{i}"
    end
  end
  1.upto(3) do |i|
    config.vm.define "server#{i}" do |node|
      node.vm.hostname = "server#{i}"
      node.vm.network :private_network, ip:"192.168.2.10#{i}"
    end
  end
  config.vm.provision 'ansible_local' do |ansible|
    ansible.playbook = 'provisioning/provision-replica.yml'
=======
  config.vm.define "maxscale" do |node|
    node.vm.hostname = "maxscale"
    node.vm.box = "centos/7"
  end
  config.vm.define "master" do |node|
    node.vm.hostname = "master"
    node.vm.network :private_network, ip:"192.168.18.20"
    node.vm.box = "centos/7"
  end
  1.upto(2) do |i|
    config.vm.define "slave#{i}" do |node|
      node.vm.hostname = "slave#{i}"
      node.vm.network :private_network, ip:"192.168.18.2#{i}"
      node.vm.box = "centos/7"
    end
  end

  config.vm.provider :vmware_workstation do |v|
    v.vmx['memsize'] = "2048"
    v.vmx['numvcpus'] = 1
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/provision-ha.yml"
    ansible.groups = {
      "mxs" => ["maxscale"],
      "repl" => ["master","slave1","slave2"]
    }
  end
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/setup-replication.yml"
    ansible.groups = {"repl" => ["slave1","slave2"]}
>>>>>>> github/master
  end
end
