VAGRANT
=======

.. contents::

Getting Started
---------------

Installing Vagrant
~~~~~~~~~~~~~~~~~~
Vagrant is no longer installed via a Ruby Gem.  Simply head to
https://releases.hashicorp.com/vagrant/ and install the appropriate package for your
OS.


Installing Packer
~~~~~~~~~~~~~~~~~
Download the latest packer and unzip to a directory on your workstation.
Add the directory to your path so the executables are available.


Building the Minimal CentOS Box
-------------------------------
Let's build the custom minimal CentOS 6 box based on the files in the
definitions directory.

.. code-block::

    packer build packer.json


Running the Minimal CentOS Box
------------------------------
Let's instantiate a virtual machine based on our new minimal centos box.

.. code-block::

    vagrant init centos-minimal packer_virtualbox-iso_virtualbox.box

**Starting the VM**

.. code-block::

    vagrant up

**Destroying the VM**

.. code-block::

    vagrant destroy

**Connecting to the VM**

.. code-block::

    vagrant ssh

**Display ssh configuration for the VM**

.. code-block::

    vagrant ssh-config
