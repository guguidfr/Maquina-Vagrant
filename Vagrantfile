Vagrant.configure("2") do |config|
  config.vm.box = "base"
  config.vm.define "aso" do |aso|
    aso.vm.box = "debian/bullseye64"
    aso.vm.hostname = "ASO"
    #aso.vm.network :"public_network", ip: "192.168.1.150", netmask: "255.255.255.0"
    #.vm.network :"public_network", ip: "172.26.26.105", netmask: "255.255.0.0"
    #aso.vm.network :"private_network" , type: "dhcp"
    aso.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--ioapic", "on"]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--name", "VM-ASO"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--cpus", 2]
    end
    aso.vm.provision "shell", path: "./aso.sh"
  end
end
