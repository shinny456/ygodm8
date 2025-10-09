#!/bin/bash

OBJDUMP="/bin/arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS baserom.gba > baserom.dump
$OBJDUMP $OPTIONS ygodm8.gba > ygodm8.dump
diff -u baserom.dump ygodm8.dump
