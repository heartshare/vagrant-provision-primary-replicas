# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
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
  end
end
