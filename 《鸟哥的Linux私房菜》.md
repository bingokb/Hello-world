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

SDRAM/DDR|型号|数据位宽（bit）|内部频率（MHz）|频率速度|$\color{#4285f4}{带宽}\color{red}{（频率×位宽}）$
---|---|---|---|---|---|
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



