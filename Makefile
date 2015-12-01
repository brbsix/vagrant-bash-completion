.PHONY: deb install userinstall uninstall useruninstall

deb:
	dpkg-deb -z8 -Zgzip --build vagrant-bash-completion .

install:
	install -m 0644 vagrant-bash-completion/etc/bash_completion.d/vagrant /etc/bash_completion.d/vagrant

userinstall:
	install -m 0664 vagrant-bash-completion/etc/bash_completion.d/vagrant ~/.bash_completion.d/vagrant

uninstall:
	rm /etc/bash_completion.d/vagrant

useruninstall:
	rm ~/.bash_completion.d/vagrant
