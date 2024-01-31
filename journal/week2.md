# week2
## 了解rust环境
1. 创建项目目录
```
cargo new project_name
```
2. 运行
```
cargo run
```
3. 编译
```
cargo build
```

## 编译rust代码

## 编写rust的第一个程序并成功运行

## 学习git命令
1. git status 查看代码变动情况
1. git clone ....... 从github同步代码
2. git add xxxx     添加文件到github管理
2. git commit -m "content" 提交变更
3. git push 提交到github
## 遇到的问题及解决方法
1. 运行时出现could not find `Cargo.toml` in `C:\Dev\Codes\rust\learning\learning_record` or any parent directory
* 解决方法：代码没有放在src目录下
* cargo new xxxx
* cargo run