#!/bin/bash


make msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_j5nlte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j9

tools/dtbTool -s 2048 -o arch/arm/boot/dt.img -p scripts/dtc/ arch/arm/boot/dts/ -v
