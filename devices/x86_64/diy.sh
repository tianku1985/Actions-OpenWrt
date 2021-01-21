#!/bin/bash



# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

 
#修改
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D %V %C by TianKu'/g" package/base-files/files/etc/openwrt_release
 sed -i '$a export LANG=zh_CN.UTF-8' package/base-files/files/etc/profile
#默认密码 root
 sed -i 's/root:.*/root:$1$tTPCBw1t$ldzfp37h5lSpO9VXk4uUE\/:18336:0:99999:7:::/g' package/base-files/files/etc/shadow