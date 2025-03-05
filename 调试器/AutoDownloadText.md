### 安装-方法1-自动配置脚本

#### 请保证磁盘空间足够大（建议70G）

#### 安装Ubuntu

[解决安装Ubuntu找不到“继续”按钮的问题](https://blog.csdn.net/weixin_54630384/article/details/127767424?spm=1001.2101.3001.6650.7\&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-7-127767424-blog-120077249.235%5Ev38%5Epc_relevant_anti_vip_base\&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-7-127767424-blog-120077249.235%5Ev38%5Epc_relevant_anti_vip_base\&utm_relevant_index=8)

[vmware和主机间复制粘贴文件、文字\_](https://blog.csdn.net/stanlyYP/article/details/127107448)

[ubuntu中文输入法无法打中文的解决办法](https://blog.csdn.net/qq_39810051/article/details/131981407)

[VMware共享文件夹设置](https://blog.csdn.net/weixin_54051652/article/details/128316296)

#### 下载仓库

```shell
git clone https://github.com/chenzhiy2001/code-debug
git clone --recursive https://github.com/chenzhiy2001/rcore-ebpf

```

注：rcore-ebpf 为修改版的 rCore-Tutorial-v3

#### 配置环境

1.  将**安装与使用**文件夹中的build.sh换到在`/home/你的用户名`目录下运行
2.  执行chmod +x build.sh命令，为文件添加权限
3.  执行./build.sh，开始执行，请保证网络畅通，可能要很长时间(期间若遇到某个部分无法安装的问题，采用手动安装再继续）
4.  执行完毕后配置环境变量：

```shell
vim ~/.bashrc
在.bashrc最后面添加以下语句
export PATH=$PATH:/home/zly/qemu-system-riscv64/build
export PATH=$PATH:/opt/riscv/bin
退出
source ~/.bashrc

```

1.  使用命令检查是否安装成功：

    1.  rustc --version (rustc 1.74.0-nightly (59a829484 2023-08-30))
    2.  npm -v (版本在9以上)
    3.  node -v (版本在18以上)
    4.  qemu-system-riscv64 --version （QEMU emulator version 7.0.0）
    5.  /opt/riscv/bin/riscv64-unknown-elf-gdb （出现（gdb命令行，输入以下命令，有输出的话，表示有python支持））

```shell
(gdb) python
print("114514")
end 

```

1.  如果还有问题请查看build.sh文件，里面用回车符隔开了下载各个工具的命令，可以把它单独复制出来到新的文件重新运行

#### 安装vscode

1.  [Download Visual Studio Code - Mac, Linux, Windows](https://code.visualstudio.com/Download)下载.deb
2.  执行下面命令，注意换文件名

```shell
 sudo dpkg -i code_1.71.2-1663191218_amd64.deb

```

#### 编译rcore-ebpf

*   在[安装说明](https://github.com/chenzhiy2001/code-debug/tree/master/%E5%AE%89%E8%A3%85%E8%AF%B4%E6%98%8E)中找到相应配置文件并添加
*   修改user/ebpf/build.sh里的路径
*   在 os 中 make run
*   如果遇到需要更高的nightly版本但是更新后仍出现此错误 在rust-toolchain.toml中将channel改为更新后的版本
*   如果在编译过程中遇到“找不到clang-12”报错，执行下面命令

```shell
sudo apt-get install clang-12

```

*   安装cmake 命令：

```shell
sudo apt-get install cmake

```

*   如果遇到“ riscv64-linux-musl-gcc未找到” 在https\://git.musl-libc.org/cgit/musl/snapshot/musl-1.2.5.tar.gz下载并编译源代码：
    ```shell
    ./configure
     make

    ```

```
export PATH=$PATH:/home/path/to/riscv64-linux-musl-cross/bin

```

&#x20;rCore-Tutorial-v3 如果修改后有错误的话，在os/Cargo.toml和user/Cargo.toml里只保留debug=true
\[profile.release]
debug = true
