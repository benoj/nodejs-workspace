LIBRARIAN := $(shell gem list | grep librarian-chef)
LIBRARIAN_PLUGIN := $(shell vagrant plugin list | grep librarian-chef)

setup:
ifndef LIBRARIAN
	echo 'INSTALLING LIBRARIAN'
	gem install librarian-chef		
endif

ifndef LIBRARIAN_PLUGIN
	vagrant plugin install vagrant-librarian-chef
endif

start:
	vagrant up
	vagrant ssh
