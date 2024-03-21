# Notes on Linux

## File Systems and Partitioning
Currently recommending 'btrfs' for all partitions except boot: ```fat32```
RHEL Recommended:
- ```/```  Root or System Directory - for system files needed on boot
- ```/home```  USer files
- ```/boot/efi```

### SWAP FILE
Little difference shown between swap file and swap partitions... does file save space?
1.5-2x RAM unless > 64GB

### File System
```bash
~/home
    /repos
        /dotfiles?
        /
    /personal
    /business
    /research
    /classes
    /downloads
    /desktops
    /media
        /sysImg
            /icons
            /wallpapers
        /photos
        /music
        /videos
    /dotfiles
```

## NixOS

