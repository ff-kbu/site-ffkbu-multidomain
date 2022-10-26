GLUON_FEATURES := \
  autoupdater \
  config-mode-geo-location-osm \
  ebtables-filter-multicast \
  ebtables-filter-ra-dhcp \
  ebtables-limit-arp \
  mesh-batman-adv-15 \
  respondd \
  status-page \
  web-advanced \
  web-private-wifi \
  web-wizard \
  config-mode-domain-select \
  ffkbu-files \
  ssid-changer \
  mesh-vpn-wireguard-kbu \
  banner

GLUON_FEATURES_standard := \
  wireless-encryption-wpa3
  
GLUON_SITE_PACKAGES :=  \
  iwinfo 

GLUON_MULTIDOMAIN=1
GLUON_DEPRECATED=full

# basic support for USB stack
USB_PACKAGES_BASIC := \
  kmod-usb-core \
  kmod-usb2

# storage support for USB devices
USB_PACKAGES_STORAGE := \
  block-mount \
  blkid \
  kmod-fs-ext4 \
  kmod-fs-vfat \
  kmod-usb-storage \
  kmod-usb-storage-extras \
  kmod-nls-cp1250 \
  kmod-nls-cp1251 \
  kmod-nls-cp437 \
  kmod-nls-cp775 \
  kmod-nls-cp850 \
  kmod-nls-cp852 \
  kmod-nls-cp866 \
  kmod-nls-iso8859-1 \
  kmod-nls-iso8859-13 \
  kmod-nls-iso8859-15 \
  kmod-nls-iso8859-2 \
  kmod-nls-koi8r \
  kmod-nls-utf8 \
  swap-utils

# network support for USB devices
USB_PACKAGES_NET := \
  kmod-mii \
  kmod-nls-base \
  kmod-usb-net \
  kmod-usb-net-asix \
  kmod-usb-net-asix-ax88179 \
  kmod-usb-net-cdc-eem \
  kmod-usb-net-cdc-ether \
  kmod-usb-net-cdc-mbim \
  kmod-usb-net-cdc-ncm \
  kmod-usb-net-cdc-subset \
  kmod-usb-net-dm9601-ether \
  kmod-usb-net-hso \
  kmod-usb-net-huawei-cdc-ncm \
  kmod-usb-net-ipheth \
  kmod-usb-net-kalmia \
  kmod-usb-net-kaweth \
  kmod-usb-net-mcs7830 \
  kmod-usb-net-pegasus \
  kmod-usb-net-qmi-wwan \
  kmod-usb-net-rndis \
  kmod-usb-net-sierrawireless \
  kmod-usb-net-smsc95xx

# network support for PCI devices
PCI_PACKAGES_NET := \
  kmod-3c59x \
  kmod-e100 \
  kmod-e1000 \
  kmod-e1000e \
  kmod-forcedeth \
  kmod-natsemi \
  kmod-ne2k-pci \
  kmod-pcnet32 \
  kmod-r8169 \
  kmod-sis900 \
  kmod-sky2 \
  kmod-tg3 \
  kmod-tulip \
  kmod-via-rhine \
  kmod-8139cp

# additional packages
TOOLS_PACKAGES := \
  iperf \
  socat \
  tcpdump \
  usbutils \
  vnstat

# x86-generic
ifeq ($(GLUON_TARGET),x86-generic)
  GLUON_SITE_PACKAGES += \
    kmod-usb-hid \
    kmod-hid-generic \
    $(USB_PACKAGES_BASIC) \
    $(USB_PACKAGES_STORAGE) \
    $(USB_PACKAGES_NET) \
    $(PCI_PACKAGES_NET) \
    $(TOOLS_PACKAGES)
endif

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
  GLUON_SITE_PACKAGES += \
    kmod-usb-hid \
    kmod-hid-generic \
    $(USB_PACKAGES_BASIC) \
    $(USB_PACKAGES_STORAGE) \
    $(USB_PACKAGES_NET) \
    $(PCI_PACKAGES_NET) \
    $(TOOLS_PACKAGES)
endif

ifeq ($(GLUON_TARGET),x86-kvm_guest)
  GLUON_SITE_PACKAGES += \
    $(TOOLS_PACKAGES)
endif

#ar71xx-generic
GLUON_tp-link-tl-wr842n-nd-v3_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-tl-wr1043n-nd-v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-tl-wr1043n-nd-v3_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-tl-wr1043n-nd-v4_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-tl-wr1043n-v5_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-tl-wdr4300-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-tl-wr2543n-nd-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_linksys-wrt160nl_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_d-link-dir-825-rev-b1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_d-link-dir-505-rev-a1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_d-link-dir-505-rev-a2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_gl-inet-6408a-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_gl-inet-6416a-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_netgear-wndr3700_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_netgear-wndr3700v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_netgear-wndr3700v4_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_buffalo-wzr-hp-g450h_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_buffalo-wzr-hp-g300nh_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-archer-c7-v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-archer-c7-v4_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)

#mpc85xx-generic
GLUON_tp-link-tl-wdr4900-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)

DEFAULT_GLUON_RELEASE := v2022.1.1-Wireguard
GLUON_RELEASE ?= v2022.1.1-Wireguard

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de

# Region settings for ARCHERC7
GLUON_REGION ?= eu

GLUON_ATH10K_MESH = 11s
