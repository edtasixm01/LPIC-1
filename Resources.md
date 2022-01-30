# LPIC-1

## Resources 


### Linux Professional Institute


[Linux Professional Institute](https://www.lpi.org)

  * [LPI LPIC-1 overview](https://www.lpi.org/our-certifications/lpic-1-overview)
  * [LPIC1 Exam 101](https://www.lpi.org/our-certifications/exam-101-objectives)
  * [LPIC1 Exam 102]( https://www.lpi.org/our-certifications/exam-102-objectives)

  * [IBM Developerworks LPI Documentation. Learn Linux, 101: A roadmap for LPIC-1](https://developer.ibm.com/tutorials/l-lpic1-map/)


### VM Virtual Machines

 * **Recomended** [PUE x64 Centos + Debian. Dual boot CentOS 7 and Debian 9 x64 64 bits 5.2GiB centian_x64.ova](https://u.pcloud.link/publink/show?code=XZ0DKtkZax09QKYCk3hG3G6MuFQyhzbeECSk)

 * [PUE i386 Centos + Debian. Dual boot CentOS 7 and Debian 10 i386 32 bits 5.1GiB centian_i386.ova](https://u.pcloud.link/publink/show?code=XZcRI2kZmrD0lK2zjE7A3sY5xbdEVJKYWIty)

 * [CentOS minimal (netinstall). CentOs 7 x86_64 64 bits 2009 973MiB](https://u.pcloud.link/publink/show?code=XZ952BXZWRF0MNlrvD7IzVqiRd0ejmrp5rvV)

 * Usuaris de las màquines: linux / linux root / toor

 * [PUE LAB https://labs.pue.es](https://labs.pue.es)


### Resources

 * [Retos del CLI](https://cmdchallenge.com)
 * [Regular expressions](https://regex101.com/)
 * [Cheat Sheets](https://cheatography.com/)


## Get GNU/Linux


### Get Fedora

 * [Get fedora](https://getfedora.org/)
 * [All Fedora GNU/Linux Releases](https://dl.fedoraproject.org/pub/fedora/linux/releases/)
 * [Fedora Cloud](https://dl.fedoraproject.org/pub/fedora/linux/releases/32/Cloud/x86_64/images/)


### Get Debian

 * [Get Debian](https://www.debian.org/distrib/)
 * [Debian Cloud Images](https://cloud.debian.org/images/cloud/)
 * [Debian Cloud images 10-Bullseye list](https://cloud.debian.org/images/cloud/bullseye/latest/)
 * [Recomended cloud image / direct root access](https://cloud.debian.org/images/cloud/bullseye/latest/debian-11-nocloud-amd64.qcow2)


### Get Ubuntu

 * [Get Ubuntu](https://ubuntu.com/download)


### Get CentOS

 * [Get CentOS](https://www.centos.org/download/)


### Get Docker

 * [Get Docker for GNU/Linux](https://docs.docker.com/engine/install/)


```
$ sudo docker run --rm --name myfedora -h myfedora -it fedora /bin/bash

$ sudo docker run --rm --name mydebian -h mydebian -it debian /bin/bash

$ sudo docker run --rm --name myubuntu -h myubuntu -it ubuntu /bin/bash

$ sudo docker run --rm --name mycentos -h mycentos -it centos /bin/bash
```

## Fedora / Debian / Ubuntu Cloud Images

### Debian Official Cloud Images

Repo:  http://cloud.debian.org/images/cloud/

Debian 10 Bullseye: http://cloud.debian.org/images/cloud/bullseye/latest/ 

Image: debian-11-nocloud-amd64.qcow2

This image has root access passwordless (user: root, no password)


### Fedora Cloud Images

Fedora Cloud 32 Repo: /pub/fedora/linux/releases/32/Cloud/x86_64/images

https://dl.fedoraproject.org/pub/fedora/linux/releases/32/Cloud/x86_64/images 

Image: Fedora-Cloud-Base-32-1.6.x86_64.qcow2

Fedora images have no root/user access. Image should be modified by virt-sysprep to set the root password:

*virt-sysprep belongs to the libguestfs-tools package*
```
$ sudo virt-sysprep -a Fedora-name-image.qcow2 --root-password password:newpasswd
```

### Ubuntu Cloud Images

Ubuntu Cloud Images Repo: https://cloud-images.ubuntu.com/ 


