library(plotly)
library(magrittr)
file  = read.csv2("trainingObject.csv", sep = ",")
df = as.data.frame(file) 
df %>% head(10)

#summary stats
summary(df)

#visualization
fig = plotly:: plot_ly(df,type='scatter3d', x = ~ax, y = ~ay, z = ~az, color = ~scr)
fig %>% add_markers()
fig
