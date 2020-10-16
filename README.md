### 8821cu ( 8821cu.ko )

### Linux Driver for the RealTek RTL8811CU, RTL8821CU and RTL8731AU Chipsets.

- Driver Version: v5.8.1.4_36409.20200313 (Realtek)
- Plus numerous updates from the Linux community

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
- Kernels: 5.4 - 5.9

### Supported Linux Distributions:

- Ubuntu - https://linuxmint.com/
- Mint - https://ubuntu.com/

### Tested Linux Distributions:

- Ubuntu 20.10 Beta
- Mint 20
- Ubuntu 20.04
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

Note: The installation of `dkms` in Mint or Ubuntu will result in the installation of the various development tools and required headers, if not previously installed, so no addition action is necessary on these distros.

### Installation of the Driver:

Note: The installation instructions I am providing are for the novice user. Experienced users are welcome to alter the installation to meet their needs.

Note: The quick way to open a terminal in Mint or Ubuntu: Ctrl+Alt+T (hold down on the Ctrl and Alt keys then press the T key.)

Note: My technique is to create a folder in my home directory to hold source packages. I call it `src`.

Create a folder to hold the downloaded driver file by first opening a terminal (Ctrl+Alt+T).

In the terminal, create the folder to hold the driver file:
```
$ mkdir src
```

Get the latest version of the driver from: `https://github.com/morrownr/88x2bu`

Download the driver by clicking on the green `Code` button.

Click on `Download ZIP` and save `8821cu-master.zip` in your `src` folder.

Upzip `8821cu-master.zip`. A folder called `8821cu-master` should be created.

Open a terminal and enter the folder called `8821cu-master`:

```
$ cd ~/src/8821cu-master
```

Execute the following commands:
```
$ sudo ./dkms-install.sh
```
```
$ sudo reboot
```
### Removal of the Driver:

Open a terminal in the directory with the source code and execute the following commands:
```
$ sudo ./dkms-remove.sh
```
```
$ sudo reboot
```

### iperf3 Test:

```
Transfer      Bandwidth
13.1 MBytes   109 Mbits/sec
13.0 MBytes   109 Mbits/sec
14.5 MBytes   121 Mbits/sec
13.7 MBytes   115 Mbits/sec
13.5 MBytes   113 Mbits/sec
13.4 MBytes   113 Mbits/sec
13.6 MBytes   114 Mbits/sec
13.4 MBytes   113 Mbits/sec
13.8 MBytes   115 Mbits/sec
13.2 MBytes   110 Mbits/sec
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

### Enjoy
