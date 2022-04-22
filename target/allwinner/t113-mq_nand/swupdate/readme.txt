OTA包制作：
一、整包升级
1.非安全方案
swupdate_pack_swu -ubi

2.安全方案
swupdate_pack_swu -secure

二、A/B系统差分升级
1.将本目录的env_ab.cfg, sys_partition_ab.fex文件复制到device/config/chips/r528s2/configs/evb2目录，
并分别替换为env.cfg，sys_partition.fex

2.打包：p; 然后烧录，此时小机端为A/B系统

3.制作base版本OTA包：swupdate_pack_swu;cp out/r528s2-evb2/swupdate/tina-r528s2-evb2.swu v1.swu

4.SDK做一些修改，比如加打印。重新编译打包

5.制作new版本OTA包：swupdate_pack_swu;cp out/r528s2-evb2/swupdate/tina-r528s2-evb2.swu v2.swu

6.制作差分包：swupdate_make_delta v1.swu v2.swu；swupdate_pack_swu -ab-rdiff

注意：此目录下的sw-subimgs-recovery-rdiff.cfg, sw-description-recovery-rdiff文件是给emmc介质的
差分方案
