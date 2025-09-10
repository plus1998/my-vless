#!/bin/bash
bash <(wget -qO- -o- https://git.io/v2ray.sh); \
v2ray add socks 44621 6666 6666; \
v2ray port tcp 8444; \
v2ray change tcp id 03c50ab2-80bf-40f2-947c-46b9e8f7b603
