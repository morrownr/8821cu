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
- Updates to support kernel 5.8 (coming soon)

### Tested Linux Distributions:

- Mint 20 ( https://linuxmint.com/ )
- Ubuntu 20.04 ( https://ubuntu.com/ )
- Mint 19.3
- Ubuntu 18.04

### Tested Hardware:

- EDUP EP-1651
  ( https://www.amazon.com/Adapter-Wireless-Portable-Compatible-10-6-10-15-3/dp/B0872VF2D8 )


## Supported Devices:

- EDUP EP-1651
- Devices with RealTek RTL8811CU, RTL8821CU and RTL8731AU Chipsets 

### DKMS:
This driver can be installed using DKMS. DKMS is a system utility which will automatically recompile and install a kernel module when a new kernel is installed. To make use of DKMS, install the `dkms` package, which on Debian (based) systems such as Ubuntu and Mint is done like this:
```
$ sudo apt-get install dkms
```

### Installation of the Driver:

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
