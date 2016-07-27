# 不支持中文传送。。。 

# 使用plot()函数绘制散点图(1.1)
png("1.1.png", width=400, height=400)
plot(mtcars$wt, mtcars$mpq)
dev.off()

# 使用qplot()函数绘制散点图(1.2)
library(ggplot2)
png("1.2.png", width=400, height=400)
qplot(mtcars$wt, mtcars$mpg)
dev.off();

# 绘制折线图
# 使用plot()函数绘制折线图时，需要向其传递一个包含x值的向量和一个包含y值的向量，
# 并使用参数 type="l" (是字母l不是数字1)图(2.1)
png("2.1.png", width=400, height=400)
plot(pressure$temperature, pressure$pressure, type="l")
dev.off()

# 先用plot()函数绘制第一条折线，再通过points()函数和lines()函数分别添加数据点和
# 更多折线图(2.2)
png("2.2.png", width=400, height=400)
plot(pressure$temperature, pressure$pressure, type="l")
points(pressure$temperature, pressure$pressure)
# 添加一条线
lines(pressure$temperature, pressure$pressure/2, col="red")
points(pressure$temperature, pressure$pressure/2, col="red")
dev.off()

# ggplot2中，可以用qplot()函数并将参数设置为geom="line"也可获得折线图(2.3)
library(ggplot2)
png("2.3.png", width=400, height=400)
qplot(pressure$temperature, pressure$pressure, geom="line")
dev.off()

# 为图2.3添加数据点图(2.4) 若两个参数向量包含在同一个数据框中，则可以使用下
# 面语句
qplot(temperature, pressure, data=pressure, geom="line")
# 或
qplot(pressure, aes(x=temperature, y=pressure))+geom_line()

# 添加数据点
png("2.4.png", width=400, height=400)
qplot(temperature, pressure, data=pressure, geom=c("line", "point"))
dev.off()
# 或
qplot(pressure, aes(x=temperature, y=pressure)) +geom_line() + geom_point()
