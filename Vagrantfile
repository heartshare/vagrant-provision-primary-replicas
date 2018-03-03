# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.provider :vmware_workstation do |v|
    v.vmx['memsize'] = "2048"
    v.vmx['numvcpus'] = 1
  end

  config.vm.define "mxs" do |node|
    node.vm.hostname = "mxs"
    node.vm.network :private_network, ip:"192.168.2.10"
  end
  1.upto(2) do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.hostname = "node#{i}"
      node.vm.network :private_network, ip:"192.168.2.1#{i}"
    end
  end
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/provision-replica.yml"
  end
end
