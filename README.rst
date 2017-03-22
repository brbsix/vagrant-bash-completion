This is a fork of Kura's `vagrant-bash-completion`_ script with a number of significant improvements. These are a few of them:

* compatible with Vagrant 1.9.2
* completions for all subcommands and option flags
* completions for vagrant-share plugin
* optional dynamic completion if Vagrant is updated or extended (this is slow, but caching is used to speed up future use)
* support for VAGRANT_HOME (See `#35`_)

Installation
============

See `latest release`_ for *.deb* package or choose from one of the following installation methods.

Easy Install
------------

To install system-wide without downloading the repository:

.. code:: bash

    wget -q https://raw.github.com/brbsix/vagrant-bash-completion/master/vagrant-bash-completion/etc/bash_completion.d/vagrant
    sudo install -m 0644 vagrant /etc/bash_completion.d/

System Install
--------------

To install system-wide, run the following from within the repository:

``sudo make install``

User Install
------------

To install for user, run the following from within the repository:

``make userinstall``

Note: You'll need to ensure that *~/.bash_completion.d/vagrant* is sourced in your shell. I recommend appending the following code to your *.bashrc*.

.. code:: bash

    # Load user completion scripts in ~/.bash_completion.d
    while IFS= read -r path; do
        . "$path"
    done < <(find -L ~/.bash_completion.d -type f)


Build Instructions
==================

To build the *.deb* package, ensure ``fakeroot`` is installed then run the following from within the repository:

``make deb``


License
=======

This software is licensed using the MIT License.
The license is provided in the `source code repository`_.


Prior Contributors
===================

+------------------------+-------------------------------------------------------------------------------------------+
| `Kura`_                | https://github.com/kura/vagrant-bash-completion/blob/master/etc/bash_completion.d/vagrant |
+------------------------+-------------------------------------------------------------------------------------------+
| `Nikita Fedyashev`_    | https://github.com/nfedyashev/bash-it/blob/master/plugins/vagrant.plugins.bash            |
+------------------------+-------------------------------------------------------------------------------------------+

.. _vagrant-bash-completion: https://github.com/kura/vagrant-bash-completion
.. _#35: https://github.com/kura/vagrant-bash-completion/pull/35
.. _latest release: https://github.com/brbsix/vagrant-bash-completion/releases/latest
.. _source code repository: https://github.com/brbsix/vagrant-bash-completion/blob/master/LICENSE
.. _Kura: https://github.com/kura
.. _Nikita Fedyashev: https://github.com/nfedyashev
