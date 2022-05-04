# We want to use version '2' of Vagrant's configuration language
Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    end

    config.berkshelf.enabled = true
    config.vm.provision "chef_solo" do |chef|
        chef.arguments = "--chef-license accept"

        # Specify the local paths where Chef data is stored
        chef.cookbooks_path = "cookbooks"
        chef.add_recipe 'test'
        chef.nodes_path = "nodes"
    end
end
