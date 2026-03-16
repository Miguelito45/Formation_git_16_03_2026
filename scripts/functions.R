# fonctions utilisées dans le projet

# calculer le décennie à partir de l'année
#' decennie_a_partir_annee
#'
#' @param annee 
#'
#' @returns un nombre : la décennie correspondant à l'année choisie
#' @export 
#'
#' @examples decennie_a_partir_annee(1995)  = 1990
decennie_a_partir_annee  <- function(annee) {
  decennie <- annee - annee %% 10
  return(decennie)
}

# fournit une statistique : moyenne, écart-type ou variance

#' Title
#'
#' @param une variable d'une table, de type numérique
#' @param un indicateur statistique : moyenne, ecart-type ou variance 
#' @param ... : signale qu'on peut indiquer plusieurs indicateurs
#' 
#' @returns
#' @export
#'
#' @examples
fonction_de_stat_agregee<-function(a,b="moyenne",...){
  if (b=="moyenne"){
    x=mean(a, na.rm = T,...)
  } else if (b=="ecart-type" | b == "sd"){
    x = sd(a, na.rm = T, ...)
  } else if (b=="variance"){
    x = var(a, na.rm = T, ...)
  }
  return(x)
}
