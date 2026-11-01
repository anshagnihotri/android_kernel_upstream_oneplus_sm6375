ifeq (${CONFIG_OPLUS_FEATURE_UIFRIST_HEAVYLOAD},)
obj-y += special_opt.o
else
obj-$(CONFIG_OPLUS_FEATURE_UIFRIST_HEAVYLOAD) += special_opt.o
endif
subdir-ccflags-y += -I$(srctree)/device/oneplus/larry/drivers/oplus/kernel/system/include
ccflags-y += -I$(srctree)/device/oneplus/larry/drivers/oplus/kernel/system/include
