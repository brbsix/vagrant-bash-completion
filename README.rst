Installation
============

Easy Install
------------

To install system-wide without downloading the repository:

.. code:: bash

    wget -q https://raw.github.com/brbsix/vagrant-bash-completion/master/vagrant-bash-completion/etc/bash_completion.d/vagrant
    sudo install -m 0644 vagrant /etc/bash_completion.d/vagrant

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
    done < <(find "$HOME/.bash_completion.d" -type f)

Build Instructions
==================

To build the *.deb* package, run the following from within the repository:

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

.. _source code repository: https://github.com/brbsix/vagrant-bash-completion/blob/master/LICENSE
.. _Kura: https://github.com/kura
.. _Nikita Fedyashev: https://github.com/nfedyashev
