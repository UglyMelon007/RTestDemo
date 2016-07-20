library(ggplot2)
library(gcookbook)
#data <-read.csv("test.csv")

# 如果一个数据集没有列名
#data <-read.csv("test.csv", header = FALSE)
# 手动为列名赋值
#names(data) <-c("Column1", "Column2", "Column3")
# 设置分隔符号 使用sep = ","
#data <-read.csv("test.csv", sep = ",")

# 默认情况下，数据集中的字符串会被视为因子(factor)处理。
#str(data)

# 设置stringAsFactors = FALSE 来将其视为字符串
data  <- read.csv("test.csv", stringsAsFactors = F)
# 转换为因子
data$Sex  <- factor(data$Sex)
data$Sex  <- as.vector(data$Sex)
str(data)

# 注：read.csv()是对read.table()一个便捷的封装函数。如果需要更多的输入控制，参见?read.table
