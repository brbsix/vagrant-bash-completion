.PHONY: deb install userinstall uninstall useruninstall

deb:
	fakeroot dpkg-deb -z8 -Zgzip --build vagrant-bash-completion .

install:
	install -m 0644 vagrant-bash-completion/etc/bash_completion.d/vagrant /etc/bash_completion.d/

userinstall:
	install -m 0664 vagrant-bash-completion/etc/bash_completion.d/vagrant ~/.bash_completion.d/

uninstall:
	rm /etc/bash_completion.d/vagrant

useruninstall:
	rm ~/.bash_completion.d/vagrant
