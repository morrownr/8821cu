### 8821cu ( 8821cu.ko )

### Linux Driver for the RealTek RTL8811CU, RTL8821CU and RTL8731AU Chipsets.

- Driver Version: v5.8.1.7 (Realtek)
- Plus updates from the Linux community

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

- Kernels: 2.6.24 ~ 5.8 (Realtek)
- Kernels: 5.9

### Supported Linux Distributions:

- Ubuntu - https://ubuntu.com/
- Mint - https://linuxmint.com/

### Tested Linux Distributions:

- Mint 20
- Mint 19.3
- Ubuntu 20.10
- Ubuntu 20.04
- Ubuntu 18.04

### Tested Hardware:

- EDUP EP-1651 WiFi Adapter 650Mbps USB 2.0:  https://www.amazon.com/gp/product/B0872VF2D8

### Thoughts on the EDUP EP-1651 WiFi Adapter:

This is a nano adapter that has impressed me with its ability to operate reliably through 3 walls, a total of about 40 feet. It runs cools, is highly reliable and is low cost.

### Supported Devices:

* EDUP EP-1651
* D-Link - DWA-171C
* TOTOLINK A650UA v3
* Numerous additional products that are based on the supported chipsets

### DKMS:
This driver can be installed using DKMS. DKMS is a system utility which will automatically recompile and install a kernel module when a new kernel is installed. To make use of DKMS, install the `dkms` package. On Debian (based) systems, such as Ubuntu and Mint, installation is accomplished like this:
```
$ sudo apt-get install dkms
```

Note: The installation of `dkms` in Mint or Ubuntu will result in the installation of the various development tools and required headers, if not previously installed, so no additional action is necessary on these distros.

### Installation of the Driver:

Note: The installation instructions I am providing are for the novice user. Experienced users are welcome to alter the installation to meet their needs.

Note: The quick way to open a terminal in Mint or Ubuntu: Ctrl+Alt+T (hold down on the Ctrl and Alt keys then press the T key.)

Note: My technique is to create a folder in my home directory to hold source packages. I call it `src`.

Create a folder to hold the downloaded driver file by first opening a terminal (Ctrl+Alt+T).

In the terminal, create the folder to hold the driver file:
```
$ mkdir src
```

Get the latest version of the driver from: `https://github.com/morrownr/8821cu`

Download the driver by clicking on the green `Code` button.

Click on `Download ZIP` and save `8821cu-5.8.1.7.zip` in your `src` folder.

Upzip `8821cu-5.8.1.7.zip`. A folder called `8821cu-5.8.1.7` should be created.

Open a terminal and enter the folder called `8821cu-5.8.1.7`:

```
$ cd ~/src/8821cu-5.8.1.7
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

### AP Mode (WiFi Hotspot Test):

- Tested good.

### Monitor Mode:

- Tested good.

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

### Driver Options

I have included a file called `8821cu.conf` that will be installed in `/etc/modeprob.d` by default.

Location: `/etc/modprobe.d/8821cu.conf`

To change driver options, you will need to edit `8821cu.conf` with a text editor.

Example:
```
$ sudo nano /etc/modprobe.d/8821cu.conf
```

The options are as follows:


Log level options: ( rtw_drv_log_level )
```
  0 = _DRV_NONE_ (default)
  1 = _DRV_ALWAYS_
  2 = _DRV_ERR_
  3 = _DRV_WARNING_
  4 = _DRV_INFO_
  5 = _DRV_DEBUG_
  6 = _DRV_MAX_
```
  Note: You can view RTW log entries by running the following in a terminal:
  ```
  $ sudo dmesg
  ```


LED control options: ( rtw_led_ctrl )
```
  0 = Always off
  1 = Normal blink (default)
  2 = Always on
```


### Enjoy
