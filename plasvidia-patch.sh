#!/bin/bash
echo "setting nvidia settings..."
cat <<EOF | sudo tee /etc/modprobe.d/nvidia.conf
options nvidia_drm modeset=1
options nvidia_drm fbdev=1
options nvidia NVreg_PreserveVideoMemoryAllocations=1
EOF
echo "patching grub..."
grep -q "nvidia_drm.modeset=1" /etc/default/grub || sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="\(.*\)"/GRUB_CMDLINE_LINUX_DEFAULT="\1 nvidia_drm.modeset=1 nvidia.NVreg_PreserveVideoMemoryAllocations=1"/' /etc/default/grub
echo "updating grub..."
sudo update-grub
echo "enabling services..."
sudo systemctl enable nvidia-suspend.service nvidia-hibernate.service nvidia-resume.service
echo "updating initramfs..."
sudo update-initramfs -u
echo "rebooting..."
sudo reboot
