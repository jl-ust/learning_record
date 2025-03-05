# 第三周

### 一、上次的问题

> configure的地方出现问题 将configure的文件 scp操作将它复制到binutils路径中就好了
>
> ==不能随便复制或更改文件内容和位置==

**从上述位置开始重新进行复现工作**

### 二、这次遇到的问题：

##### **1.编译riscv工具链等待时间非常长，网络一波动就失败（主要问题还是在下载过慢方面，大多数时间都花在这里了）==已解决==**

**解决问题方法：**

> 本身win11的hyper V和vmare workstation有兼容性问题，正常来说，不能二者共存
>
> 需要在win11上流畅运行vmare虚拟机，需要在win11用管理员权限打开power shell
>
> 然后在里面运行命令:
>
> bcdedit /set hypervisorlaunchtype off
>
> powercfg /powerthrottling disable /path “C:\Program Files (x86)\VMware\VMware Workstation\x64\vmware-vmx.exe”
>
> “C:\Program Files (x86)\VMware\VMware Workstation\x64\vmware-vmx.exe” 改成你的系统的虚拟机路径
>
> 就OK了。
> ————————————————
>
> 原文链接：<https://blog.csdn.net/yagamil/article/details/142313302>

##### **2.网络连接问题又出现，网络图标消失 ==已解决==**

解决方法：

和第一周出现的问题解决方法一样，network manager解决

**3.test.sh安装有python支持的riscv工具链时克隆git仓库失败==已解决==**

解决方法：

**`fatal: destination path 'riscv-gnu-toolchain' already exists and is not an empty directory.`**

./test.sh前已经装了toolchain，导致不需要再git clone，脚本识别没有git clone就直接跳到克隆失败

删掉\*\*`path 'riscv-gnu-toolchain'`\*\*让脚本装就好了

&#x20;**4.the asm!\* macro is not allowed in naked functions==已解决？（与小红工作日志中解决方法不一）==**

![image.png](https://note.youdao.com/yws/res/f/WEBRESOURCEa258069435d1123921344a9f3f28af9f)

编译器升级导致asm这个宏不可用了，自行修改这行代码后成功（附录）

选择这个解决方案主要是不敢随便改旧版本
