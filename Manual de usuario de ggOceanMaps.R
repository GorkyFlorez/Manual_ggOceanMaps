#------------------------------------------------------------------------
library(ggOceanMaps)
library(ggplot2)
library(ggspatial)
#------------------------------------------------------------------------
# Grafica del Peru Utilizando ggOceanMaps
P1 <- basemap(60)
basemap(limits = c(-81.33662, -68.68525, -18.34561,-0.04174805))

# Seleccionado un area
dt <- data.frame(lon = c(160, 160, -160, -160), lat = c(60, 80, 80, 60))
P2 <- basemap(limits = c(160, -160, 60, 80)) +
  geom_spatial_polygon(data = dt, aes(x = lon, y = lat), fill = NA, color = "red")

# Mapa del Mundo
P3 <- basemap(limits = 60, projection.grid = TRUE, grid.col = "red")

# Batimetría y glaciares
P4 <- basemap(limits = c(100, 160, -20, 30), bathymetry = TRUE)
P5 <- basemap(limits = 60, glaciers = TRUE, bathymetry = TRUE)
P6 <- basemap(limits = c(-140, -105, 20, 40), bathymetry = TRUE) + scale_fill_viridis_d("Water depth (m)")
P7 <- basemap(limits = 60, projection.grid = TRUE, grid.col = "red")

dt <- data.frame(lon = c(-30, -30, 30, 30), lat = c(50, 80, 80, 50))
P8 <- basemap(data = dt, bathymetry = TRUE) + 
  geom_polygon(data = transform_coord(dt), aes(x = lon, y = lat), color = "red", fill = NA)
#------------------------------------------------------------------------
ggsave("Manual de usuario de ggOceanMaps/Mapa 1.png",
       plot = P1, width =  7,height = 9, dpi=900)
ggsave("Manual de usuario de ggOceanMaps/Mapa 2.png",
       plot = P2, width =  7,height = 9, dpi=900)
ggsave("Manual de usuario de ggOceanMaps/Mapa 3.png",
       plot = P3, width =  7,height = 9, dpi=900)
ggsave("Manual de usuario de ggOceanMaps/Mapa 4.png",
       plot = P4, width =  7,height = 9, dpi=900)
ggsave("Manual de usuario de ggOceanMaps/Mapa 5.png",
       plot = P5, width =  7,height = 9, dpi=900)
ggsave("Manual de usuario de ggOceanMaps/Mapa 6.png",
       plot = P6, width =  7,height = 9, dpi=900)
ggsave("Manual de usuario de ggOceanMaps/Mapa 7.png",
       plot = P7, width =  7,height = 9, dpi=900)
ggsave("Manual de usuario de ggOceanMaps/Mapa 8.png",
       plot = P8, width =  7,height = 9, dpi=900)
