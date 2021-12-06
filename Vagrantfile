Vagrant.configure("2") do |config|
  config.vm.define "centos" do |centos|
    centos.vm.box = "centos/7"
  end

  config.vm.provision "shell", path: "script.sh"
end
