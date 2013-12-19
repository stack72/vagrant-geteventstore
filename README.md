vagrant-geteventstore
=====================

Vagrant environments for GetEventStore

To use the SingleNode environment

    cd singlenode


    vagrant up --provider=vmware_fusion

When it's finished provisioning, then visit http://192.168.50.11:2113/ in your browser
    
More boxes will appear here for virtualbox etc. This is very much a testbed right now so use with caution. IT IS NOT PRODUCTION READY AT ALL

Dependencies
--

* [Vagrant 1.2.7+](http://downloads.vagrantup.com/tags/v1.2.7)
* [VirtualBox 4.2.18](https://www.virtualbox.org/wiki/Download_Old_Builds_4_2)

It has also been tested on Vagrant 1.4.1
