# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.provider :vmware_workstation do |v|
    v.vmx['memsize'] = "2048"
    v.vmx['numvcpus'] = 1
  end

  config.vm.define "maxscale" do |node|
    node.vm.hostname = "maxscale"
    node.vm.network :private_network, ip:"192.168.80.209"
  end
  config.vm.define "master" do |node|
    node.vm.hostname = "master"
    node.vm.network :private_network, ip:"192.168.80.200"
  end
  1.upto(2) do |i|
    config.vm.define "slave#{i}" do |node|
      node.vm.hostname = "slave#{i}"
      node.vm.network :private_network, ip:"192.168.80.20#{i}"
    end
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/provision-replica.yml"
  end
end
