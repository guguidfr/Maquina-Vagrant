Vagrant.configure("2") do |config|
  config.vm.box = "debian"
  config.disksize.size = "15GB"
  config.vm.define "debian" do |debian|
    debian.vm.box = "debian/bullseye64"
    debian.vm.hostname = "debian-10"
    # debian.vm.network :"public_network", ip: "192.168.1.150", netmask: "255.255.255.0"
    # debian.vm.network :"public_network", ip: "172.26.26.105", netmask: "255.255.0.0"
    debian.vm.network :"private_network" , ip: "100.10.0.1", netmask: "255.255.255.0"
    debian.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--ioapic", "on"]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--name", "VM-ASO"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--cpus", 2]
    end
    debian.vm.provision "shell", path: "./setup.sh"
  end
end
