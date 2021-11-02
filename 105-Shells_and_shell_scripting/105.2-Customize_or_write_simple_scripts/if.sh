#! /bin/bash
# if examples

if [ -e /etc/fstab ]; then
  echo "file /etc/fstab exists"	
fi

if [ -w /etc/fstab ]; then
  echo "file /etc/fstab is writable"
else
  echo "file /etc/fstab is not writable"	
fi	


if [ -w /etc/fstab ]; then
  echo "file /etc/fstab is writable"
elif [ -x /etc/fstab ];then
  echo "file /etc/fstab is executable"	
elif [ -r /etc/fstab ]; then
  echo "file /etc/fstab is readable"
else
  echo "file /etc/fstab is not w x r"
fi
