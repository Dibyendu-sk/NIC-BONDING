
# NIC-BONDING

NIC bonding can be defined as the combination of multiple nics into a single bond interface.
It's main purpose is to provide high availability of bandwidth.


## Creating NIC bonding

- Add a new NIC if it does not exist
- Install bonding driver = modprobe bonding
- To list the bonding module info = modinfo bonding
You will see the driver version as seen below if the driver is installed and loaded

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)
