# xlsx包中的函数read.xlsx()可以读取Excel文件
# 安装引用xlsx需要安装Java放在百度云软件/Java
# 算了这里也放一份吧 JavaJRE\jre-8u91-windows-x64.exe
#install.packages("xlsx")
#library(xlsx)
# 使用read.xlsx()加载工作表时，既可以通过序数参数sheetIndex来指定，
# 也可以用工作表名参数sheetName来指定
# read.xlsx("test.xlsx", sheetIndex=2) read.xlsx("test.xlsx", sheetName="test")
#data  <- read.xlsx("test.xlsx", 1)

# 如果要阅读老版本的excel文件(xls)gdata包提供了函数read.xls();需要安装perl之类太麻烦
# 可以直接用read.xlsx()来阅读xls文件
install.packages("gdata")
library(gdata)
data  <- read.xlsx("testxls.xls", 1)
data$名字

# SPSS文件 还没用过呢 先不了解了
