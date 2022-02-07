
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

### Now we have to edit the first network adapter file (ifcfg-enp0s3)
- vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
- Delete the entire content
- Add the following parameters
    DEVICE=enp0s3<br />
    TYPE=Ethernet<br />
    BOOTPROTO=none<br />
    ONBOOT=yes<br />
    HWADDR=”MAC from the ifconfig command”<br />
    MASTER=bond0<br />
    SLAVE=yes<br />
- Save and exit the file<br />


