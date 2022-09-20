library(plotly)
library(magrittr)
file  = read.csv2("trainingObject.csv", sep = ",")
df = as.data.frame(file) 
df %>% head(10)
# df$scr%<>% factor()
#summary stats
summary(df)

#visualization
fig = plotly:: plot_ly(df,type='scatter3d', x = ~ax, y = ~ay, z = ~az, color = ~scr)
fig %>% add_markers()
fig

scr0 = df %>% dplyr::filter(scr==0)
f0 = plotly:: plot_ly(scr0,type='scatter3d', x = ~ax, y = ~ay, z = ~az, color = ~scr)
f0 %>% add_markers()
f0

scr1 = df %>% dplyr::filter(scr==1)
f1 = plotly:: plot_ly(scr0,type='scatter3d', x = ~ax, y = ~ay, z = ~az, color = ~scr)
f1 %>% add_markers()
f1

