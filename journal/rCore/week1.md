# 第一节：从bare metal map开始

## 一、预备知识

*   **寄存器的含义**

    > 寄存器是计算机处理器（CPU）中非常快速的存储设备，用来存储指令、数据和地址。在执行程序时，CPU会==频繁地使用寄存器来读取指令、存储临时结果、进行算术和逻辑运算以及管理内存地址。==
    >
    > 寄存器的主要特点包括：
    >
    > 1.  **速度**：寄存器位于CPU内部，因此它们的读写速度远高于普通的内存（RAM）。
    > 2.  **容量**：寄存器的容量通常比较小，因为它非常昂贵且集成在CPU内部。
    > 3.  **种类**：有不同的寄存器类型，包括数据寄存器、地址寄存器、状态寄存器、指令寄存器等。
    >
    >     *   **数据寄存器**：用来存储操作数和计算结果。
    >     *   **地址寄存器**：用来存储内存地址。
    >     *   **状态寄存器**：包含当前运算的状态信息，如标志位（表示结果的正负、是否为零或溢出等）。
    >     *   **指令寄存器**：存储当前正在执行的指令。
    > 4.  **用途**：寄存器直接参与到指令的执行过程中，它们可以用来加速数据处理和计算过程，减少处理器访问内存的次数。
    >
    > 在程序执行时，寄存器的使用是优化性能的关键因素之一，编译器在生成机器代码时会尽量利用寄存器来提高程序的运行效率。

## 二、操作系统的定义与组成

操作系统为程序开发者提供了对底层硬件资源的抽象

*   在一般情况下，操作系统的主要组成包括&#x20;
*   操作系统内核:操作系统的核心部分，负责控制计算机的硬件资源并为用户和应用程序提供服务。
*   系统工具和软件库:为操作系统提供基本功能的软件，包括工具软件和系统软件库等
*   &#x20;用户接口:是操作系统的外壳，是用户与操作系统交互的方式。用户接口包括图形用户界面(GUI)和命令行界面(CLI)等。

![../\_images/app-software-stack.png](https://learningos.cn/rCore-Tutorial-Guide-2024S/_images/app-software-stack.png "../_images/app-software-stack.png")

*   CPU特权级-OS/User

    *   早期计算机系统中，没有严格意义上的特权级概念。程序可以直接访问所有的系统资源和硬件。·这种设计存在严重的安全风险和系统稳定性问题随着计算机系统的发展，人们意识到需要一种能够有效管理和控制系统资源的软件(OS)操作系统开始引入对程序的管理和隔离，但在早期阶段，这种管理可能并不是基于严格的特权级概念
    *   随着计算机系统的复杂性增加和对安全性需求的提高，特权级的概念逐渐发展起来。(批处理系统分时系统) 特权级架构的设计使得操作系统能够将关键的系统功能和资源保护起来，只允许操作系统内核在特殊的特权级别下执行这些功能，而普通应用程序则在较低的特权级别下运行

![image.png](https://note.youdao.com/yws/res/8/WEBRESOURCEdfe6e55bd6ee0d6c0090a4e0b68cd768)



![image.png](https://note.youdao.com/yws/res/6/WEBRESOURCEb05cd46490513db7d931238a4f886d36)

![image.png](https://note.youdao.com/yws/res/8/WEBRESOURCEf580c03fecf28033420f33d046e43b78)



## 三、源代码->运行

*   目标三元组

    CPU

    操作系统

    运行时库

    ### App->Bare meta app

    1.  修改编译目标
    2.  剥掉标准库
    3.  剥掉内核/操作系统
    4.  app直接操作硬件平台

&#x9;	修改编译目标+剥掉标准库

![image.png](https://note.youdao.com/yws/res/a/WEBRESOURCE254533a955e91b22ee4d1b478b8f115a)












