# Laravel Homestead

The official Laravel local development environment.

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


