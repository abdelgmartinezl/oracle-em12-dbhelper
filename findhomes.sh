#!/bin/bash

for user in `ps -eo user,comm | grep _smon_ | awk '{ print $1 }' | sed '1 d' | sort | uniq`
do
  if [ $user != 'root' ]
    then
      su - $user -c "sqlplus / as sysdba @example.sql"
  fi
done
