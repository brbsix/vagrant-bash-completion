.PHONY: deb install localinstall uninstall localuninstall

deb:
	dpkg-deb -z8 -Zgzip --build vagrant-bash-completion

install:
	install -m 0644 vagrant-bash-completion/etc/bash_completion.d/vagrant /etc/bash_completion.d/vagrant

localinstall:
	install -m 0664 vagrant-bash-completion/etc/bash_completion.d/vagrant ~/.bash_completion.d/vagrant

uninstall:
	rm /etc/bash_completion.d/vagrant

localuninstall:
	rm ~/.bash_completion.d/vagrant
