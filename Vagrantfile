Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "master" do |master|
      master.vm.network "private_network", ip: "192.168.2.2"
      master.vm.provision "shell", path: "master_provision.sh"
      master.vm.provider "virtualbox" do |v|
        v.name = "jenkins-master"
      end
  end

end
