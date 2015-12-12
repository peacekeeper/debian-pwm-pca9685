
ifneq ($(KERNELRELEASE),)
	obj-m := pwm-pca9685.o
	pwm-pca9685-objs := 
else
	BASEDIR := /lib/modules/$(shell uname -r)
	KERNELDIR ?= $(BASEDIR)/build
	PWD :=$(shell pwd)
	DRIVERDIR := $(BASEDIR)/kernel/drivers/misc

.PHONY: all
all: clean modules install

.PHONY:modules
modules:
	$(MAKE) -C $(KERNELDIR) SUBDIRS=$(PWD) modules

.PHONY:clean
clean:
	$(MAKE) -C $(KERNELDIR) SUBDIRS=$(PWD) clean

.PHONY:install
install:
	$(MAKE) -C $(KERNELDIR) SUBDIRS=$(PWD) INSTALL_MOD_DIR=$(DRIVERDIR) modules_install

endif

