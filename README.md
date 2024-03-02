# HomeServer

## How to build

1. A clean install of Ubuntu Server.

    - Select the full version (not minimal install) but do not select any Snaps for pre-installation.

    - Select the correct boot-disk, use the whole disk, select LVM, and
      enable LUKS encryption.

1. After first boot, log in.

1. Clone the server configuration bootstrap files from GitHub in to a directory where your server configuration source will live. e.g.:

    ```bash
    $ mkdir $HOME/ServerConfigs

    $ cd $HOME/ServerConfigs

    $ git clone https://github.com/Confuzed/HomeServer.git

    ```

1. Set your working directory to the location of the cloned repository:

    ```bash
    $ cd HomeServer
    ```

1. If necessary, make the bootstrap script executable:

    ```bash
    $ chmod 0700 bootstrap.sh
    ```

1. Execute the bootstreap script:

    ```bash
    $ ./bootstrap.sh
    ```

1. Follow the directions given by the script, which will result in a clone of the private repository hosting the full server configuration.
