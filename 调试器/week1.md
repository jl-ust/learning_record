# （草稿）第一周

目标：复现

## 问题：

### 1.网络无法连接

尝试1：

sudo service network-manager restart

==失败==

尝试2：

桥接模式->NAT模式

DNS

8.8.8.8

### 2.rust nightly

nightly切换后还是过不去

记得sudo权限

#### 最终尝试：

直接进test.sh注释掉rust部分的指令

### 3.下载riscv时空间不足

尝试1：

扩展Ubuntu空间
