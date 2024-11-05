# 1. Seleccionar dataset y cargar los datos
library(readr)
cachexia <- read_csv("Datasets/2024-Cachexia/human_cachexia.csv")




# 2. Crear contenedor SummarizedExperiment

  #Instalar y cargar paquete si no lo tenemos
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}
BiocManager::install("SummarizedExperiment")
library(SummarizedExperiment)

  # Leer metadatos
metadata <- readLines("Datasets/2024-Cachexia/description.md")

  # Crear la clase SummarizedExperiment
object <- SummarizedExperiment(
  assays = list(counts=cachexia),
  metadata = metadata
)


# 3. Explorar estructura de los datos

str(object)
dim(assays(object)$counts)
metadata(object)
str(colData(object))
str(rowData(object))

# 4. Guardar documentos necesarios
save(object, file = "datos_metabolomica.Rda")
install.packages("usethis")
install.packages("git2r")
setwd(github.com/Marta-lf/Lafuente-Sanchez-Marta-PEC1)




