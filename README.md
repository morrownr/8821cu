### 8821cu ( 8821cu.ko )

### Linux Driver for the RealTek RTL8811CU, RTL8821CU and RTL8731AU Chipsets.

- Driver Version: v5.8.1.4_36409.20200313 (Realtek)
- Updates from the Linux community

### Supported Features:

- IEEE 802.11 b/g/n/ac WiFi compliant
- 802.1x, WEP, WPA TKIP and WPA2 AES/Mixed mode for PSK and TLS (Radius)
- WPS - PIN and PBC Methods
- IEEE 802.11b/g/n/ac Client mode
- Wireless security for WEP, WPA TKIP, WPA2 AES PSK and WPA3-SAE Personal
- Site survey scan and manual connect
- WPA/WPA2 TLS client
- Power saving mode
- AP Mode (WiFi Hotspot)
- Monitor mode
- WiFi-Direct
- Miracast
- MU-MIMO
- Mesh
- Wake on LAN

### Supported Kernels:

- Kernels: 2.6.24 ~ 5.3 (Realtek)
- Kernel:  5.4 (support added and tested)
- Kernel:  5.8 (support added and tested)

### Tested Linux Distributions:

- Ubuntu 20.10 Beta
- Mint 20 			https://linuxmint.com/
- Ubuntu 20.04 		https://ubuntu.com/
- Mint 19.3
- Ubuntu 18.04

### Tested Hardware:

- EDUP EP-1651 WiFi Adapter 650Mbps USB 2.0:  https://www.amazon.com/gp/product/B0872VF2D8

### Thoughts on the EDUP EP-1651 WiFi Adapter:

This is a nano adapter that has impressed me with its ability to operate reliably through 3 walls, a total of about 40 feet. It runs cools, is highly reliable and is low cost.

### Supported Devices:

* EDUP EP-1651
* Numerous additional products that are based on the supported chipsets

### DKMS:
This driver can be installed using DKMS. DKMS is a system utility which will automatically recompile and install a kernel module when a new kernel is installed. To make use of DKMS, install the `dkms` package. On Debian (based) systems, such as Ubuntu and Mint, installation is accomplished like this:
```
$ sudo apt-get install dkms
```

### Installation of the Driver:

Note: The installation instructions I am providing are for the novice user. Experienced users are welcome to alter the installation to meet their needs.

Go to `https://github.com/morrownr/8821cu` for the latest version of the driver.

Download the driver by clicking on the green `Code` button.

Click on `Download ZIP` and save `8821cu-master.zip` in your `Downloads` folder.

Upzip `8821cu-master.zip`. A folder called `8821cu-master` should be created.

Open a terminal and enter the folder called `8821cu-master`:

```
$ cd ~/Downloads/8821cu-master
```

Execute the following command:
```
$ sudo ./dkms-install.sh
```
```
$ sudo reboot
```
### Removal of the Driver:

Open a terminal in the directory with the source code and execute the following command:
```
$ sudo ./dkms-remove.sh
```
```
$ sudo reboot
```

### iperf3 Test:

```
Transfer     Bandwidth       Retr  Cwnd
13.1 MBytes   109 Mbits/sec    0    351 KBytes
13.0 MBytes   109 Mbits/sec    0    495 KBytes
14.5 MBytes   121 Mbits/sec    0    619 KBytes
13.7 MBytes   115 Mbits/sec    0    655 KBytes
13.5 MBytes   113 Mbits/sec    0    655 KBytes
13.4 MBytes   113 Mbits/sec    0    691 KBytes
13.6 MBytes   114 Mbits/sec    0    691 KBytes
13.4 MBytes   113 Mbits/sec    0    725 KBytes
13.8 MBytes   115 Mbits/sec    0    762 KBytes
13.2 MBytes   110 Mbits/sec    0    805 KBytes
```

### Ping Test:

```
64 bytes : icmp_seq=58 ttl=64 time=2.88 ms
64 bytes : icmp_seq=59 ttl=64 time=3.00 ms
64 bytes : icmp_seq=60 ttl=64 time=2.89 ms
64 bytes : icmp_seq=61 ttl=64 time=3.12 ms
64 bytes : icmp_seq=62 ttl=64 time=2.91 ms
64 bytes : icmp_seq=63 ttl=64 time=2.95 ms
64 bytes : icmp_seq=64 ttl=64 time=3.05 ms
64 bytes : icmp_seq=65 ttl=64 time=2.78 ms
64 bytes : icmp_seq=66 ttl=64 time=2.86 ms
64 bytes : icmp_seq=67 ttl=64 time=2.83 ms

```

### AP Mode (WiFi Hotspot Test):

- Tested good on Mint 19.3.

### Monitor Mode:

- Tested good on Mint 19.3

### Entering Monitor Mode with 'iw' and 'ip':
Start by making sure the system recognizes the Wi-Fi interface:
```
$ sudo iw dev
```

The output shows the Wi-Fi interface name and the current mode among other things. The interface name will be something like `wlx00c0cafre8ba` and is required for the below commands. I will use `wlan0` as the interface name but you need to substitute your interface name.

Take the interface down:
```
$ sudo ip link set wlan0 down
```

Set monitor mode:
```
$ sudo iw wlan0 set monitor control
```

Bring the interface up:
```
$ sudo ip link set wlan0 up
```

Verify the mode has changed:
```
$ sudo iw dev
```

### Reverting to Managed Mode with 'iw' and 'ip':

Take the interface down:
```
$ sudo ip link set wlan0 down
```

Set managed mode:
```
$ sudo iw wlan0 set type managed
```

Bring the interface up:
```
$ sudo ip link set wlan0 up
```

Verify the mode has changed:
```
$ sudo iw dev
```

