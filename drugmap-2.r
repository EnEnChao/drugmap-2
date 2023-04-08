# 載入需要的套件：
install.packages("mapdeck")
library(mapdeck)

# 設置 API 金鑰
mapdeck::set_token("pk.eyJ1IjoiZW5lbnR1dG9yIiwiYSI6ImNsZzdydHd3ejA1MHAzZmtwMWZxZzVqaDUifQ.yMyUuxgXHRHYw09GfF_vOA")

# 建立地圖
m <- mapdeck(style = mapdeck_style("dark")) %>%
  add_polygon(
    data = districts_joined,
    fill_colour = "total_count",
    legend = TRUE,
    palette = "viridis",
    tooltip = "T_Name"
  )

# 印出地圖
m

