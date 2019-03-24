ShruggieRegression <- function(summaryObject) {
  
  summary_to_edit <- capture.output(summaryObject)
  
  # Our cast of heroes
  shruggiezero <- "¯\\\\_(\U30C4)_/¯"
  shruggiezerozeroone <- "¯\\\\__(\U30C4)__/¯"
  shruggiezeroone <- "¯\\\\___(\U30C4)___/¯"
  
  # Regex to find/replace * with ¯\_(ツ)_/¯ 
  
  # O
  improved <- stringr::str_replace_all(summary_to_edit,"\\*\\*\\*",shruggiezero)
  # .001
  improved <- stringr::str_replace_all(improved,"\\*\\*",shruggiezerozeroone)
  # .01
  improved <- stringr::str_replace_all(improved,"\\*",shruggiezeroone)

  
  # Note that cat will have a different result than print
  cat(paste(improved, collapse = '\n'))
  
  
  

}

ShruggieRegression(summary(lm(Sepal.Length ~ . , data = iris)))
