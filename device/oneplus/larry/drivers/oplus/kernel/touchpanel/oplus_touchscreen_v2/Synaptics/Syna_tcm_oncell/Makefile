#
# Makefile for the Synaptics TCM touchscreen driver.
#

# Each configuration option enables a list of files.

oplus_bsp_tp_tcm_oncell-y += synaptics_tcm_oncell.o
oplus_bsp_tp_tcm_oncell-y += synaptics_tcm_device.o

obj-$(CONFIG_TOUCHPANEL_SYNAPTICS_TCM_ONCELL) += oplus_bsp_tp_tcm_oncell.osubdir-ccflags-y += -I$(srctree)/device/oneplus/larry/drivers/oplus/kernel/system/include
ccflags-y += -I$(srctree)/device/oneplus/larry/drivers/oplus/kernel/system/include
