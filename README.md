# sqlloader_shell_demo
### 介绍：
在oracle环境下，使用shell脚本定时拉取 库表数据.txt 文件，并调用sqlloader入库；
### 依赖：
linux系统；oracle环境；
### 使用方法：
修改好库表，字段和链接，直接使用；
### 说明：
* 适用于，需要定时从接口拉取数据，或者由设备推送数据成文件的方式，约定好文件格式入库；
* sqlloader可在几分钟内倒入5mb的数据量；
