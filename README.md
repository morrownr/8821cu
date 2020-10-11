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
- Tested on kernel 5.4
- Tested on kernel 5.8

### Tested Linux Distributions:

- Ubuntu 20.10 Beta
- Mint 20 			( https://linuxmint.com/ )
- Ubuntu 20.04 		( https://ubuntu.com/    )
- Mint 19.3
- Ubuntu 18.04

### Tested Hardware:

- EDUP EP-1651 WiFi Adapter 650Mbps USB 2.0
  ( https://www.amazon.com/gp/product/B0872VF2D8 )


## Supported Devices:

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
