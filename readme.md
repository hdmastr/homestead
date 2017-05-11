<p align="center"><img src="https://laravel.com/assets/img/components/logo-homestead.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/homestead"><img src="https://travis-ci.org/laravel/homestead.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/homestead"><img src="https://poser.pugx.org/laravel/homestead/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/homestead"><img src="https://poser.pugx.org/laravel/homestead/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/homestead"><img src="https://poser.pugx.org/laravel/homestead/license.svg" alt="License"></a>
</p>

## Introduction

Laravel Homestead is an official, pre-packaged Vagrant box that provides you a wonderful development environment without requiring you to install PHP, a web server, and any other server software on your local machine. No more worrying about messing up your operating system! Vagrant boxes are completely disposable. If something goes wrong, you can destroy and re-create the box in minutes!

Homestead runs on any Windows, Mac, or Linux system, and includes the Nginx web server, PHP 7.1, MySQL, Postgres, Redis, Memcached, Node, and all of the other goodies you need to develop amazing Laravel applications.

Official documentation [is located here](http://laravel.com/docs/homestead).

## Headmaster VM extras
- Initial sites setup in Homestead.yaml
- MySQL strict mode turned off
- Adminer installed

## Installing Homestead

### First Steps

Before launching your Homestead environment, you must install [VirtualBox 5.x](https://www.virtualbox.org/wiki/Downloads) or [VMWare](http://www.vmware.com) as well as [Vagrant](http://www.vagrantup.com/downloads.html). 

#### Installing The Homestead Vagrant Box

Once VirtualBox / VMware and Vagrant have been installed, you should add the `laravel/homestead` box to your Vagrant installation using the following command in your terminal. It will take a few minutes to download the box, depending on your Internet connection speed:

    vagrant box add laravel/homestead

If this command fails, make sure your Vagrant installation is up to date.

#### Installing Homestead

You may install Homestead by simply cloning the repository. Consider cloning the repository into a `Homestead` folder within your "home" directory, as the Homestead box will serve as the host to all of your Laravel projects:

    cd ~

    git clone https://github.com/hdmastr/homestead.git Homestead

Once you have cloned the Homestead repository, run the `bash init.sh` command from the Homestead directory to create the `Homestead.yaml` configuration file. The `Homestead.yaml` file will be placed in the `~/.homestead` hidden directory:

    bash init.sh

#### Configuring Homestead

Now you need to configure the Homestead installation. Edit the `~/.homestead/Homestead.yaml` file to match your system's folder structure and needs.

#### Start Homestead

Now simply run `cd ~/Homestead && vagrant up` to start the vagrant box.
It is recommended to add the below function to your `~/.bash_profile` to be able to run homestead commands easily. Simply run `homestead ssh` or 
`homestead up` from any directory!

    function homestead() {
        ( cd ~/Homestead && vagrant $* )
    }


