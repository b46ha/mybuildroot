setenv kernel_filename "zImage"
setenv fdt_filename "bcm2708-rpi-b.dtb"
setenv bootargs "root=/dev/mmcblk0p2 rootwait console=tty1 console=ttyAMA0,115200"

echo > Loading Kernel...
ext4load mmc 0:2 ${kernel_addr_r} ${kernel_filename}
echo > Loading FDT...
fatload mmc 0:1 ${fdt_addr_r} ${fdt_filename}

echo > Booting System...
bootz ${kernel_addr_r} - ${fdt_addr_r}
