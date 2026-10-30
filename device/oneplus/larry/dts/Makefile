ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-21707-overlay.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-21708-overlay.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-21629-overlay.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-2162B-overlay.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-216E9-overlay.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-216EA-overlay.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-21141-21341-overlay-EVT.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-21141-21341-overlay-DVT.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-21141-21341-overlay-PVT-EU.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-21141-21341-overlay-PVT.dtbo
dtbo-$(CONFIG_ARCH_HOLI) += holi-larry-21141-overlay-MP67w.dtbo

holi-larry-21707-overlay.dtbo-base := holi-larry.dtb
holi-larry-21708-overlay.dtbo-base := holi-larry.dtb
holi-larry-21629-overlay.dtbo-base := holi-larry.dtb
holi-larry-2162B-overlay.dtbo-base := holi-larry.dtb
holi-larry-216E9-overlay.dtbo-base := holi-larry.dtb
holi-larry-216EA-overlay.dtbo-base := holi-larry.dtb
holi-larry-21141-21341-overlay-EVT.dtbo-base := holi-larry.dtb
holi-larry-21141-21341-overlay-DVT.dtbo-base := holi-larry.dtb
holi-larry-21141-21341-overlay-PVT-EU.dtbo-base := holi-larry.dtb
holi-larry-21141-21341-overlay-PVT.dtbo-base := holi-larry.dtb
holi-larry-21141-overlay-MP67w.dtbo-base := holi-larry.dtb
endif

always := $(dtb-y)
subdir-y := $(dts-dirs)
clean-files := *.dtb *.dtbo
