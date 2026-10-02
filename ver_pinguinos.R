ver_pinguinos <- function(x){
  
  if(!file.exists(x)){
    
    cli::cli_inform("No se encontró el archivo. Lo voy a descargar.")
    
    pinguinos_url <- "https://zenodo.org/records/12772944/files/pinguinos.csv?download=1"
    
    download.file(
      url = pinguinos_url,
      destfile = x
    )
    
    cli::cli_inform("El archivo fue descargado.")
    
  } else {
    
    cli::cli_inform("El archivo ya existe. Lo voy a leer.")
    
  }
  
  pinguinos <- readr::read_csv(x)
}