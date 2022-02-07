
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

    DEVICE=bond0
    TYPE=Bond

    NAME=bond0

    BONDING_MASTER=yes

    BOOTPROTO=none

    ONBOOT=yes

    IPADDR=192.168.1.80

    NETMASK=255.255.255.0

    GATEWAY=192.168.1.1

    BONDING_OPTS=”mode=5 miimon=100”
- Save and exit the file

