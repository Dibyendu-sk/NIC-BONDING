
# NIC-BONDING

NIC bonding can be defined as the combination of multiple nics into a single bond interface.
It's main purpose is to provide high availability of bandwidth.


## Creating NIC bonding

- Add a new NIC if it does not exist
- Install bonding driver = modprobe bonding
- To list the bonding module info = modinfo bonding

You will see the driver version as seen below if the driver is installed and loaded

<img src="https://github.com/Dibyendu-sk/NIC-BONDING/blob/main/InkedCapture4_LI.jpg" width="600" height="300" />

### Create bond interface file
- vi /etc/sysconfig/network-scripts/ifcfg-bond0
- Add the following parameters

    DEVICE=bond0<br />
    TYPE=Bond<br />
    NAME=bond0<br />
    BONDING_MASTER=yes<br />
    BOOTPROTO=none<br />
    ONBOOT=yes<br />
    IPADDR=192.168.0.108<br />
    NETMASK=255.255.255.0<br />
    GATEWAY=192.168.0.1<br />
    BONDING_OPTS=”mode=5 miimon=100”
- Save and exit the file
<br /><br />

### Now we have to edit the first NIC File (enp0s3)
- vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
- Delete the entire content
- Add the following parameters
    DEVICE=enp0s3<br />
    TYPE=Ethernet<br />
    BOOTPROTO=none<br />
    ONBOOT=yes<br />
    HWADDR=”MAC from the ifconfig command for enp0s3 interface”<br />
    MASTER=bond0<br />
    SLAVE=yes<br />
- Save and exit the file<br />

### Now we have to Create the Second NIC File (enp0s8)
- vi /etc/sysconfig/network-scripts/ifcfg-enp0s8
- Add the following parameters
    TYPE=Ethernet<br />
    BOOTPROTO=none<br />
    DEVICE=enp0s8<br />
    ONBOOT=yes<br />
    HWADDR=”MAC from the ifconfig command for enp0s8 interface”<br />
    MASTER=bond0<br />
    SLAVE=yes<br />
- Save and exit the file<br />

#### Now we have to restart the NetworkManager and verify the results by using 'ifconfig' command.

## In the above shell script we have automate these processes
#### Here are some screenshots

<img src="https://github.com/Dibyendu-sk/NIC-BONDING/blob/main/InkedCapture2_LI.jpg" width="800" height="500" />
<br /><br />




