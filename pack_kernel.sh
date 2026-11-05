#!/bin/bash
echo "=> Assuming artifacts are in kernel-build-larry-6.1 directory..."
rm -rf AnyKernel3/Image AnyKernel3/dtbs/
mkdir -p AnyKernel3/dtb
echo "=> Placing Image in AnyKernel3..."
cp kernel-build-larry-6.1/Image AnyKernel3/
echo "=> Placing DTB files in AnyKernel3..."
cp kernel-build-larry-6.1/*.dtb AnyKernel3/dtb/
echo "=> Packaging AnyKernel3 zip..."
cd AnyKernel3
zip -r9 ../larry-upstream-kernel.zip * -x .git README.md *placeholder
cd ..
echo "=> Done! Flash larry-upstream-kernel.zip in TWRP/Lineage Recovery."
