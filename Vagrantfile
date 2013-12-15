Vagrant.configure("2") do |config|
    config.vm.box = "Ubuntu precise 64 VMWare"
    config.vm.box_url = "http://files.vagrantup.com/precise64_vmware.box"

    count = 1
    for i in 1..1    
    ip = count + 10
    config.vm.define "eventstore#{i}" do |eventstore|
        eventstore.vm.network "private_network", ip: "192.168.50.#{ip}"
        eventstore.vm.network :forwarded_port, guest: 2311, host: 2311
        #eventstore.vm.provision "shell", inline: "sudo apt-get update"
        eventstore.vm.provision "shell", inline: "wget http://ha.geteventstore.com/showcase/EventStore-Mono-2.5.0RC1.tar.gz"
        eventstore.vm.provision "shell", inline: "tar -xvzf EventStore-Mono-2.5.0RC1.tar.gz"
        eventstore.vm.provision "shell", inline: "cd EventStore-Mono-2.5.0RC1"
        eventstore.vm.provision "shell", inline: "./Singlenode.sh"
    end
    end
end 
