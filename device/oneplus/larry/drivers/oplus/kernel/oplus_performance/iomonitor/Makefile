# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2018-2020 Oplus. All rights reserved.

#ifdef OPLUS_FEATURE_IOMONITOR
obj-$(CONFIG_IOMONITOR)	+= console.o
obj-$(CONFIG_IOMONITOR)	+= iomonitor.o
obj-$(CONFIG_IOMONITOR)	+= iotrace.o
obj-$(CONFIG_IOMONITOR)	+= uid_status.o
#endif /*OPLUS_FEATURE_IOMONITOR*/
subdir-ccflags-y += -I$(srctree)/device/oneplus/larry/drivers/oplus/kernel/system/include
ccflags-y += -I$(srctree)/device/oneplus/larry/drivers/oplus/kernel/system/include
