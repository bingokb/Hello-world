# Markdown 语法
# 这是一级标题  
## 这是二级标题
### 这是三级标题
#### 这是四级标题
##### 这是五级标题
###### 这是六级标题

**这是加粗的文字**
*这是倾斜的文字*`
***这是斜体加粗的文字***
~~这是加删除线的文字~~

---
----
***
*****

- 列表内容
+ 列表内容
* 列表内容

表头|表头|表头
---|:--:|---:
内容|内容|内容
内容|内容|内容

第二行分割表头和内容。
- 有一个就行，为了对齐，多加了几个
文字默认居左
-两边加：表示文字居中
-右边加：表示文字居右
注：原生的语法两边都要用 | 包起来。此处省略


# 第一部分
## 第0章 计算机概论
### 0.2.2 内存 P12
动态随机存取内存：DRAM Dynamic Random Access Messory Memory
双倍数据传输速度：DDR Double Data Rate
静态随机存取内存：SRAM Static Random Access Memory 
只读存储器：ROM Read Only Memory 非易失性存储
BIOS: Basic Input Output System

SDRAM/DDR|型号|数据位宽（bit）|内部频率（MHz）|频率速度| <font color=4285f4>带宽</font><font color=red>（频率×位宽）</font> 
---|------------|---|---|---|---
SDRAM|PC100|64|100|100|800MB/s
SDRAM|PC133|64|133|133|1064MB/s
DDR|DDR-266|64|133|266|2.1GB/s
DDR|DDR-400|64|200|400|3.2GB/s
DDR|DDR2-800|64|200|800|6.4GB/s
DDR|DDR3-400|64|200|1600|12.8GB/s

### 0.2.3 显卡 P15
显卡：VGA Video Graphics Array 
- 分辨率 颜色深度 
- 显存
- GPU
- PCI-Express(PCIe)

规格|位宽|速度|带宽
----|----|----|----|
PCI|32 bits|33 MHz|133MB/s
PCI2.2|64 bits|66 MHz|533MB/s
PCI-X|64 bits|133 MHz|1064MB/s
AGP 4x|32 bits|66x4 MHz|1066MB/s
AGP 8x|32 bits|66x8 MHz|2133MB/s
PCIe 1.0x1|无|无|250MB/s
PCIe 1.0x8|无|无|2GB/s
PCIe 1.0x8|无|无|4GB/s

规格|1x带宽|16x带宽
---|---|---|
PCIe 1.0|250MB/S|4GB/s
PCIe 2.0|500MB/S|8GB/s
PCIe 3.0|约 1GB/s|约 16GB/s
PCIe 4.0|约 2GB/s|约 32GB/s

显卡与显示器接口
- D-Sub(VGA接口) 
    规格标准：640x350px @70HZ、1280x1024px @85HZ、2048x1536px @85HZ
- DVI 数字信号：DVI-D; 整合数字和模拟信号：DVI-I
    规格标准：1920x1200px @60HZ、2560x1600px @60HZ
- HDMI 可同时传输影像和声音
- DisplayPort 可同时传输影像和声音

### 0.2.4 硬盘与存储设备
硬盘
- 圆形碟片、机械手臂、磁头、主轴马达
- 扇区sector：磁盘的最小物理存储单位
- 磁道track：同一个同心圆组成的圆
- 柱面cylinder：所以碟片同一个磁道

传输接口
- USB
- SATA
- SAS
- IDE
- SCSI

版本|宽带(Gbit/s)|速度(MB/s)
---|:---:|:---:|
SATA1.0|1.5|150
SATA2.0|3|300
SATA3.0|6|600

SATA接口：通过数据算法关系，当传输10位编码时，仅有8位为数据，其余2位为校验之用
SAS接口：Serial Attached SCSI 串行式SCSI，速度比SATA快，硬盘的碟片转速和传输速度比SATA硬盘好，支持热插拔，但是比较贵
版本|带宽（Gbit/s)|速度（MB/s）
--|:-:|:-:|
SAS1|3|300
SAS2|6|600
SAS3|12|1200
USB接口：
版本|宽带(Mbit/s)|速度(MB/s)
---|:---:|:---:|
USB1.0|12|1.5
USB2.0|480|60
USB3.0|5G|500
USB3.1|10G|1000
固态硬盘 Solid State Disk SSD

### 0.2.5 扩展卡与接口

### 0.2.6 主板
I/O地址
IRQ中断请求

CMOS:主要功能是记录主板上面的重要参数，包括系统时间、CPU电压与频率、各项设备的I/O地址与IRQ等
BIOS:写入到主板上某一块flash或EEPROM的程序，它可以在计算机启动的时候执行，以加载CMOS当中的参数，并尝试调用存储设备中的引导程序，进一步进入操作系统当中。

### 0.2.7
能源转换率：输出功率/输入功率

## 0.3 数据表示方式
### 0.3.1数字系统
二进制
八进制
十六进制

### 0.3.2字符编码系统
ASCII American Standard Code for Information Interchange 美国信息交换标准代码
Unicode UTF-8 ISO/IEC制订

## 0.4 软件程序运行
两大类：系统软件、应用程序

### 0.4.1 机器语言程序与编译型程序

### 0.4.2 操作系统
#### 操作系统内核 Kernel
<font color=red>&nbsp;&nbsp;操作系统 Operating System, OS ：是一组程序，重点在于管理电脑的所有活动以及驱动系统中的所有硬件</font>

#### 系统调用 System Call
    应用程序编程接口： Application Programming Interface API
    硬件-内核-系统调用-应用程序（壳程序） P27
    操作系统：内核及其提供接口的工具

- **操作系统的内核层直接参考硬件规格写成，所以同一个操作系统程序不能够在不一样的硬件架构下运行**
- **操作系统只管理整个硬件资源，包括CPU、内存、输入输出设备及文件系统等**
- **应用程序的开发都是参考操作系统提供的API,所以该应用程序只能在该操作系统上面运行而已，不可以在其他操作系统上运行**

#### 内核功能
主要是在负责整个电脑系统相关的资源分配与管理
功能：
- 系统调用接口 System call interface
- 进程管理 Process control
- 内存管理 Memory management
        系统所有的程序代码和数据都必须先存放到内存当中；通常内核会提供虚拟内存的功能，当内存不足时可以提供交换分区（swap）的功能
- 文件管理系统 Filesystem management
- 设备驱动 Device drivers

#### 操作系统与驱动系统

###0.4.3 应用程序

## 0.5 重点回顾
- 计算机的定义为：接收用户输入命令与数据，经由中央处理器的数学与逻辑单元运算处理后，以产生或存储成有用的信息
- 电脑的五大单元包括：输入单元、输出单元、控制单元、算术逻辑单元、记忆单元，其中CPU包含控制、算术逻辑单元、记忆单元又包含辅助存储
- 数据会流进或流出内存是CPU所发布的控制命令，而CPU实际要处理的数据则完全来自于内存
- CPU依设计理念主要分为：精简指令集（RISC）与复杂指令集（CISC)系统
- CPU频率：外频指的是CPU与外部组件进行数据传输时的速度，倍频则是CPU内部用来加速工作性能的一个倍数，两者相乘才是CPU的频率速度
- 新的CPU设计中，已经将北桥的内存控制芯片整合到CPU内，而CPU与内存、显卡通信的总线通常称为系统总线。南桥就是所谓的输入输出（I/O）总线，主要在连接硬盘、USB、显卡等设备。
- CPU 每次能够处理的数据量称为字长（word size），字长依据CPU的设计而有32位和64位。我们现在所称的电脑是32位或64位主要是依据这个CPU解析的字长而来。
- 个人电脑的内存主要组件为动态随机存取内存（Dynamic Random Access Memory,DRAM），至于CPU内部的二级缓存则使用的静态随机存取内存（Static Random Access Memory,SRAM）。
- BIOS(Basic Input Outoput System)是一个程序，这个程序是写死到主板上面的一个内存芯片中，这个内存芯片在没有通电时也能够将数据记录下来，那就是只读存储器(Read Only Memory,ROM)。
- 目前主流的外接卡接口大多为PCLe接口，且最新为PCLe3.0,单通道速度高达1GB/S
- 常见的显卡连接到屏幕的接口有HDMI、DVI、D-Sub、DisplayPort等。HDMI可同时传送影像与声音。
- 传统的硬盘分为：圆形碟片、机械手臂、磁头与主轴马达所组成的，其中碟片的组成为扇区、磁道与柱面。
- 磁盘连接到主板的接口大多为SATA或SAS，目前桌面电脑主流使用的为SATA3.0,理论极速可达600MB/s。
- 常见的字符编码为ASCII，简体中文编码主要有GB2312及UTF-8两种，目前主流为UTF-8。
- 操作系统(Operating System,OS)其实也是一组程序，这组程序的重点在于管理电脑的所有操作以及驱动系统中的所有硬件。
- 电脑主要以二进制位单位，常用的磁盘容量单位为字节(Byte)，其单位换算为1字节=8位。
- 最普通的操作系统仅在驱动与管理硬件，而要使用硬件时，就得需要通过应用软件或是壳程序(Shell)的功能，来调用操作系统操作硬件工作。目前称为操作系统的除了上述功能外，通常已经包含了日常工作所需要的应用软件在内。

PS:外部资料
![1](C:\Users\YB\Desktop\thunderbolt3.jpg)





