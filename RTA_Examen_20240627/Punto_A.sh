    7  sudo fdisk -l
    8  sudo fdisk /dev/sdd
    9  sudo fdisk /dev/sdc
   10  sudo pvs
   11  sudo pvcreate /dev/sdc1 /dev/sdd1
   12  sudo pvs
   13  sudo vgcreate vg_datos /dev/sdc1
   14  sudo vgcreate vg_temp /dev/sdd1
   15  sudo vgs
   16  sudo lvcreate -L +5M vg_datos -n lv_docker
   17  sudo lvcreate -L +1.5G vg_datos -n lv_workareas
   18  sudo lvs
   19  sudo lvcreate -L +512M vg_temp -n lv_swap
   20  sudo lvs
   21  sudo mkdir /work
   22  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
   23  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas 
   24  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   25  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
   26  swapon
   27  sudo mkswap /dev/mapper/vg_temp-lv_swap 
   28  sudo swapon /dev/mapper/vg_temp-lv_swap
   29  swapon
