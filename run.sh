#!/bin/bash

RAM=32G
#-smp 3 -net nic -net user,smb=/home/amanocha/data/

qemu-system-x86_64 -kernel arch/x86/boot/bzImage -smp 8 -m $RAM -append "root=/dev/sda console=ttyS0" -hda qemu-image.img --enable-kvm --nographic -net nic,model=virtio -net user,hostfwd=tcp::11022-:22
			#-netdev user,id=mynet0,hostfwd=tcp::11022-:22 -device virtio-net-pci,netdev=mynet0
    			#-device virtio-net-pci,netdev=mynet0 
			#-virtfs local,path=/home/amanocha/data/vp/,mount_tag=host0,security_model=passthrough,id=host0
