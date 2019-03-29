
# coding: utf-8

# In[24]:


num = [1,2,3,4]
new = num.copy()
#re =num*new
print (new)


# In[30]:


num = [1,2,3,4,5]
new = []
for i in num:
    new.append(i**2)


# # Pythons数据分析-1

# In[ ]:


#第九章时间序列
import pandas as pd
import numpy as py
from pandas.tseries.offsets import *
from datetime import datetime
from dateutil.parser import parse
n1 = datetime.now()
n2 = datetime.now().day
n3 = n1.weekday()+1
n4 = datetime.now().weekday()+1
n5 = datetime.now().isocalendar() 
n6 = datetime.now().isocalendar()[1] #返回周数
n7 = datetime.now().date()
n8 = datetime.now().time()
n9 = datetime.now().strftime("%Y-%m-%d %H:%M:%S") #注意 月和日的大小写，意思不一样
n10 = type(n9)
n11 = type(parse(n9))
n12 = '2019-3-13'
n13 = type(n12)
n14 = type(parse(n12))
date = datetime(2019,3,13,23,47)
n15 = date + Day(1)
n16 = date + Minute(1)
n17 =date + Hour(1)

print (n1)
print (n2)
print (n3)
print (n4)
print (n5)
print (n6)
print (n7)
print (n8)
print (n9)
print (n10)
print (n11)
print (n13)
print (n14)
print (date)
print (n15)
print (n16)
print (n17)


# # 随机练习-1

# In[44]:


import random
import string
a = random.uniform(0,10)#范围内生成随机浮点数，参数a b 大小关系不受限制
b = random.randint(11,20)#随机整数，参数a 必须大于 b
c = random.randrange(0,101) #随机偶数
d = random.choice("qweasdzxc") #随机字符
e = random.sample("uiojklnm,",3) #随机 指定数量 字符
items = [1,2,3,4,5,6]
random.shuffle(items) #洗牌，随机排序

f = random.sample(['a','b','c','d','e','f','g','h','i','j'], 3)

st =""
g = st.join(f)

#string.join(random.sample(['a','b','c','d','e','f','g','h','i','j'], 3)).replace(" ","")  ??

print (g)
print (f)
#print (st)
print (items)
print (e)
print (d)
print (c)
print (b)
print (a)


# # Python基础教程-1

# In[3]:


#第四章 字典
items = [('name','gumby'),('age',21)]
d = dict(items)
print (d)


# In[16]:


people = {
    'Alice':{ 
        'phone':'123456',
         'addr':'foo drive 23'
            },
    'Beth':{
        'phone':'654321',
        'addr':'bar street 42'
    },
    'Cecil':{
        'phone':'333666',
        'addr':'baz avenue 90'
    }   
        }
labels = {
    'phone': 'phone number',
    'addr': 'address'
}

name = input('Name: ')
request = input('Phone number (p)or address (a)')
if request == 'p': key = 'phone'
if request == 'a': key = 'addr'
if name in people:
    print(
    "{}'s {} is {}.".format(name,labels[key],people[name][key])
    )
else :
    print ('There is no {}.'.format(name))


# # Python数据分析-2

# In[1]:


# 第13章 数据可视化
import matplotlib.pyplot as plt
get_ipython().magic('matplotlib inline')
plt.rcParams["font.sans-serif"] = 'SimHei'
plt.rcParams['axes.unicode_minus'] = False
get_ipython().magic("config InlineBackend.figue_format = 'svg'")
fig = plt.figure()


# In[9]:


plt.figure(figsize = (8,6))
fig = plt.figure()
ax1 = fig.add_subplot(1,1,1)


# In[41]:


fig = plt.figure(facecolor ="yellow")
ax1 = fig.add_subplot(2,2,1)
ax2 = fig.add_subplot(2,2,2)
ax3 = fig.add_subplot(2,2,3)
ax4 = fig.add_subplot(2,2,4)


# In[14]:


plt.subplot2grid((2,2),(0,0)) # plt.subplot2grid 建立坐标系不需要先建立画布


# In[23]:


import numpy as np
x = np.arange(6)
y = np.arange(6)
plt.subplot2grid((2,2),(0,0))
plt.plot(x,y)


# In[20]:


plt.subplot2grid((2,2),(0,1))
plt.bar(x,y)


# In[50]:


import numpy as np
fig,axes = plt.subplots(2,2)
x = np.arange(6)
y = np.arange(6)
a = np.arange(10)
b = np.arange(10)
axes[0,0].plot(x,y)
axes[0,1].bar(x,y)
axes[1,0].plot(a**2,b*2)
axes[1,1].bar(a,b*4)


# In[69]:


#【Python】 【绘图】plt.figure()的使用 CSDN
z = np.arange(1,10)
plt.subplot(222)
plt.plot(z,z)
plt.subplot(221)
plt.plot(z,-z)
plt.subplot(223)
plt.plot(z,z**2)
plt.grid(color='r', linestyle='--', linewidth=2,alpha=0.2) # alpha透明度，
plt.subplot(224)
plt.plot(z,np.log(z))
plt.show()


# In[117]:


fig2 = plt.figure(figsize = (9,6))
c = [-1,1, 2, 3, 4, 5, 7,10]
d = [1, 3, 4, 2, 5, 8, 6,9]
#figure的百分比,从figure 10%的位置开始绘制, 宽高是figure的80%
left, bottom, width, height = 0.1, 0.1, 0.8, 0.8
# 获得绘制的句柄
ax5 = fig2.add_axes([left, bottom, width, height])
ax5.plot(c, d,'r') # r=red
ax5.set_title('area1')

#新增区域ax2,嵌套在ax1内
left, bottom, width, height = 0.2, 0.6, 0.3, 0.25
# 获得绘制的句柄
ax6 = fig2.add_axes([left, bottom, width, height])
ax6.plot(c,d, 'm') # b==blue m=magenta 洋红色
# ax6.set_title('area2')
# plt.show()


# In[115]:


def dicmake(**kwargs):

    return kwargs


# # 50种常用的matplotlib可视化-知乎

# In[8]:


import pandas as pd
import numpy as np
df = pd.read_csv("https://raw.githubusercontent.com/selva86/datasets/master/midwest_filter.csv")


# In[20]:


#df.info()
#df.describe()
#df.shape
print (df)


# In[2]:


import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns
import warnings; warnings.filterwarnings(action='once')

large = 22; med = 16; small = 12
params = {'axes.titlesize': large,
          'legend.fontsize': med,
          'figure.figsize': (16, 10),
          'axes.labelsize': med,
          'axes.titlesize': med,
          'xtick.labelsize': med,
          'ytick.labelsize': med,
          'figure.titlesize': large}
plt.rcParams.update(params)
plt.style.use('seaborn-whitegrid')
sns.set_style("white")
get_ipython().magic('matplotlib inline')

# Version
print(mpl.__version__)  #> 3.0.0
print(sns.__version__)  #> 0.9.0


# In[13]:


midwest = pd.read_csv("https://raw.githubusercontent.com/selva86/datasets/master/midwest_filter.csv")
categories = np.unique(midwest['category'])
colors = [plt.cm.tab10(i/float(len(categories)-1)) 
          # loat 浮点数   
          # matplotlib.cm是matplotlib库中内置的色彩映射函数,tab10是颜色映射列表中的一种 色彩名
          # matplotlib.cm.[色彩]('[数据集]')即对[数据集]应用[色彩]
          for i in range(len(categories))] # range建立整数列表


# ## 实验，理解代码意思
# 
# #print(len(categories))
# for i in range(len(categories)): 
#     print (i)
#     print(categories[i])
# a = float(len(categories)-1)
# i = i in range(len(categories))
# b = i/float(len(categories)-1)
# print (a)
# print (b)
# 
# 

# ## 实验，理解代码意思
# print (colors)
# 
# 
# print (plt.cm.tab10(0))
# print ("0.5:   {}".format(( plt.cm.tab10(0.5))))
# print (plt.cm.tab10(1))
# print (plt.cm.tab10(2))
# print (plt.cm.tab10(3))
# print (plt.cm.tab10(4))
# print (plt.cm.tab10(5))
# print (plt.cm.tab10(6))
# print ("6.5:   {}".format(( plt.cm.tab10(6.5))))
# print ("7:     {}".format(( plt.cm.tab10(7))))
# print ("7.5:   {}".format(( plt.cm.tab10(7.5))))
# print ("8:     {}".format(( plt.cm.tab10(8))))
# print ("8.5:   {}".format(( plt.cm.tab10(8.5))))
# print (plt.cm.tab10(9))
# print (plt.cm.tab10(10))
# print (plt.cm.tab10(11))

# ## 实验，理解代码意思
# '''
# import matplotlib.cm
# print(matplotlib.cm.cmap_d.keys())
# a = matplotlib.cm.cmap_d.keys()
# print (len(a))
# '''
# 
# for category in enumerate(categories)
# col1 = midwest.category()
# data1 = midwest.loc[midwest.category==category, :]

# ##  问题
# 1、为什么选择 tab10 颜色集？
# 2、颜色是如何选择的？
# 

# In[36]:


# Draw Plot for Each Category
plt.figure(figsize=(16,10),dpi = 80,facecolor = 'w',edgecolor ='k')
for i,category in enumerate(categories): # i=0-13  category = AAR AAU AHR ...(14个)
    # enumerate() 函数用于将一个可遍历的数据对象(如列表、元组或字符串)组合为一个索引序列，同时列出数据和数据下标，一般用在 for 循环当中。
    plt.scatter('area','poptotal', # 需要的 数据列
               data = midwest.loc[midwest.category==category, :], #loc[行，列] 冒号表示取所有的列： area poptotal 这两列
               s=20, 
                cmap=colors[i], # 颜色选择
                label=str(category)) # label 标签

    # Decorations 装饰
plt.gca().set(xlim=(0.0,0.1),ylim=(0,90000),
              xlabel='Area',ylabel='Population')

plt.xticks(fontsize=12); plt.yticks(fontsize=12)
plt.title("Scatterplot of Midwest Area vs Population", fontsize=22)
plt.legend(fontsize=12)    # 说明 标签label
plt.show() 


# ## 实验，理解代码意思
# for category in enumerate(categories)
# col1 = midwest.category()
# data1 = midwest.loc[midwest.category==category, :]

# In[22]:


# Using Colormaps to set color of line in matplotlib
# https://stackoverflow.com/questions/8931268/using-colormaps-to-set-color-of-line-in-matplotlib
import matplotlib.pyplot as plt
import matplotlib.colors as colors
import matplotlib.cm as cmx
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(111)
jet = colors.Colormap('jet')
cNorm  = colors.Normalize(vmin=0, vmax=values[-1])
scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=jet)
lines = []
for idx in range(len(curves)):
    line = curves[idx]
    colorVal = scalarMap.to_rgba(values[idx])
    retLine, = ax.plot(line, color=colorVal)
    #retLine.set_color()
    lines.append(retLine)
ax.legend(lines, labels, loc='upper right')
ax.grid()
plt.show()


# In[24]:


# 上面问题的可行代码
import matplotlib.pyplot as plt
import matplotlib.colors as colors
import matplotlib.cm as cmx
import numpy as np

# define some random data that emulates your indeded code:
NCURVES = 10
np.random.seed(101)
curves = [np.random.random(20) for i in range(NCURVES)]
values = range(NCURVES)

fig = plt.figure()
ax = fig.add_subplot(111)
# replace the next line 
#jet = colors.Colormap('jet')
# with
jet = cm = plt.get_cmap('jet') 
cNorm  = colors.Normalize(vmin=0, vmax=values[-1])
scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=jet)
print (scalarMap.get_clim())

lines = []
for idx in range(len(curves)):
    line = curves[idx]
    colorVal = scalarMap.to_rgba(values[idx])
    colorText = (
        'color: (%4.2f,%4.2f,%4.2f)'%(colorVal[0],colorVal[1],colorVal[2])
        )
    retLine, = ax.plot(line,
                       color=colorVal,
                       label=colorText)
    lines.append(retLine)
#added this to get the legend to work
handles,labels = ax.get_legend_handles_labels()
ax.legend(handles, labels, loc='upper right')
ax.grid()
plt.show()


# In[21]:


#python中的颜色相关的定义在matplotlib模块中，为方便使用，这里给大家展示一下在这个模块中都定义了哪些选颜色。
#https://blog.csdn.net/guduruyu/article/details/77836173
import matplotlib
for name, hex in matplotlib.colors.cnames.items():
    print (name,   hex)


# In[ ]:


def power(x,n):
    s = 1
    while n > 0:
        n = n +1
        s = s * n
    return s
#x = input ('输入x:')
#n = input ('输入n:')
print (power(5,5))


# In[6]:


def my_abs(x):
    if not isinstance(x, (int, float)):
        raise TypeError('bad operand type')
    if x >= 0:
        return x
    else:
        return -x
    


# In[1]:


# 斐波那契数列
def fibonacci(i):
    num_list = [0,1]
    if i < 2:
        return num_list[i]
    elif i >= 2:
        return (fibonacci(i - 2)+ fibonacci(i - 1))

print (fibonacci(10))


# In[2]:


def application(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/html')])
    body = '<h1>Hello, %s!</h1>' % (environ['PATH_INFO'][1:] or 'web')
    return [body.encode('utf-8')]

