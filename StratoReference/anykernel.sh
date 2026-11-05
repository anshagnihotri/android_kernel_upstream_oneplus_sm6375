# AnyKernel3 Ramdisk Mod Script
properties() { '
kernel.string=OxygenOS Upstream Kernel by Ansh
do.devicecheck=0
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=larry
device.name2=CPH2469
supported.versions=13-16
'; }

block=auto;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh;

# Dump boot and dtbo partitions
dump_boot;

# Flash kernel image
ui_print "- Flashing kernel image...";
flash_boot;

# Flash DTB if present
if [ -f "$home/dtb.img" ]; then
    ui_print "- Flashing device tree blobs...";
    block=/dev/block/bootdevice/by-name/dtb$slot;
    if [ -b "$block" ]; then
        dd if="$home/dtb.img" of="$block" bs=1M;
        ui_print "  ✓ DTB flashed to $block";
    else
        ui_print "  ! DTB partition not found, skipping...";
    fi
fi

# Flash DTBO if present
if [ -f "$home/dtbo.img" ]; then
    ui_print "- Flashing device tree overlays...";
    block=/dev/block/bootdevice/by-name/dtbo$slot;
    if [ -b "$block" ]; then
        dd if="$home/dtbo.img" of="$block" bs=1M;
        ui_print "  ✓ DTBO flashed to $block";
    else
        ui_print "  ! DTBO partition not found, skipping...";
    fi
fi

ui_print "- Installation complete!";
