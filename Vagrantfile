# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  provider_is_libvirt = (!ARGV.nil? && ARGV.join('').include?('provider=libvirt'))
   
  unless(provider_is_libvirt)
     config.vm.box = "ubuntu/trusty64"
     config.vm.provider "virtualbox" do |vb|
       vb.customize ["modifyvm", :id, "--memory", "2048"]
     end
  end
	
	
  if (provider_is_libvirt)	
    config.vm.define :default do |default|
      default.vm.box = "ubuntu/trusty64"
      default.vm.provider :libvirt do |domain|
        domain.memory = 2048
        domain.cpus = 2
        domain.nested = true
        domain.volume_cache = 'none'
      end
    end
    config.vm.provider :libvirt do |libvirt|
      libvirt.storage_pool_name = "images"
    end
  end

  config.vm.network "forwarded_port", guest: 80, host: 8080
  
  config.vm.synced_folder "salt/srv_salt/", "/srv/salt/"
  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
    salt.install_type = "stable"
    salt.bootstrap_options = "-F -c /tmp/ -P"
  end
 
end
