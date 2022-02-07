
# NIC-BONDING

NIC bonding can be defined as the combination of multiple nics into a single bond interface.
It's main purpose is to provide high availability of bandwidth.


## Creating NIC bonding

- Add a new NIC if it does not exist
- Install bonding driver = modprobe bonding
- To list the bonding module info = modinfo bonding
You will see the driver version as seen below if the driver is installed and loaded

<img src="https://camo.githubusercontent.com/..." data-canonical-src="https://github.com/Dibyendu-sk/NIC-BONDING/blob/main/InkedCapture4_LI.jpg width="200" height="400" />
