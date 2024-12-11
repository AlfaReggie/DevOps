#!/bin/bash

scp cat/s21_cat prod@192.168.100.15:/usr/local/bin/ || exit 1
scp grep/s21_grep prod@192.168.100.15:/usr/local/bin/ || exit 1

ssh prod@192.168.100.15 ls -lah /usr/local/bin/
if [ $? -ne 0 ]; then
    echo "Ошибка при подключении по SSH"
    exit 1
fi