.PHONY: install uninstall deb

deb:
	dpkg-deb -z8 -Zgzip --build vagrant-bash-completion

install:
	install -m 0644 vagrant-bash-completion/etc/bash_completion.d/vagrant /etc/bash_completion.d/vagrant

uninstall:
	rm /etc/bash_completion.d/vagrant

