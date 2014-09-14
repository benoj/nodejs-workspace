Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/trusty64"
	config.vm.synced_folder './workspace', "/home/vagrant/workspace"
	
	config.vm.provision :chef_solo do |chef|
		chef.add_recipe 'nodejs'
	end
end
