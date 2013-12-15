Vagrant::Config.run do |config|
    config.vm.box = "Ubuntu precise 64 VMWare"
    config.vm.box_url = "http://files.vagrantup.com/precise64_vmware.box"

    count = 1
    for i in 1..1    
    ip = count + 10
    config.vm.define "eventstore#{i}" do |eventstore|
        eventstore.vm.network :hostonly, "192.168.50.#{ip}"
        eventstore.vm.provision "shell", inline: "sudo apt-get update"
        eventstore.vm.provision "shell", inline: "wget http://download.geteventstore.com/binaries/eventstore-mono-2.0.1.tgz"
        eventstore.vm.provision "shell", inline: "tar -xvzf eventstore-mono-2.0.1.tgz"
    end
    end
end 
