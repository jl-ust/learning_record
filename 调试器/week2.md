# 第二周

### 一、上次的问题：

1.vmware ubuntu界面太卡了
2.网络过慢、连接有问题
3.内存不够
解决方案：因为加了快照所以越来越卡
vmware重装17版本、不加任何快照之后全部解决

### 二、这次的问题：

1.安装时发现test.sh的qemu这块的安装脚本不加sudo就提示没有权限然后就终止了，output1.txt也是没有权限
加sudo：
rust nightly过不去
不加sudo：qemu过不去 permission denied没权限
output1.txt生成不了 没权限
猜测可能是chmod只有执行权限，没有生成权限
结果：
应该在home下面的用户目录而不是home目录
问题解决。通过，txt也出来了。

configure的地方出现问题
将configure的文件 scp操作将它复制到binutils路径中就好了
