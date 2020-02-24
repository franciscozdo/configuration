#!/bin/bash

DEFMNT=/mnt/android
echo Remember to unlock your phone!
read
if [ $1 == '-m' ]; then
  if [ ! -d $2 ]; then 
    msg="not exists"
    if [ -a $2 ]; then
      msg="not a directory"
    fi
    echo "error: Cannot connect '$2' $msg"
    exit 1
  fi
  jmtpfs $2
  if [ $? -eq 0 ]; then
    echo Android device mounted to $2
  fi
elif [ $1 == '-u' ]; then
  fusermount -u $2
  if [ $? -eq 0 ]; then
    echo Android device unmounted
  fi
else 
  echo Unknown option $1;
  echo "-m  mount to specified dir ( -m ~/android )";
  echo "-u  unmount from specified dir (e.g. -u ~/android )";
fi



