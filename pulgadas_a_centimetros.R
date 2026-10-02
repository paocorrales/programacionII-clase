
pulgadas_a_centimetros <- function(medida_pulgadas) {
  
  if (!is.numeric(medida_pulgadas)) {
    
    cli::cli_abort(c(
      "medida_pulgadas debe ser de tipo numérico",
      "i" = "La variable ingresada es {class(medida_pulgadas)}"
    ))
    
  }
  
  medida_pulgadas * 2.54
  
  
}







