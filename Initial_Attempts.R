# There are some intersting challenges with shruggie in r because he's
# made up of so many characters that need to be escaped in regex

library(stringi)
shruggie <- "¯\\_(\U30C4)_/¯"
stri_unescape_unicode(gsub("\\U","\\u",a, fixed=TRUE))
cat(paste(shruggie, collapse = '\n'))  

y <- stri_unescape_unicode(gsub("\\U","\\u",y, fixed=TRUE))

cat(paste(y, collapse = '\n'))  

# str_replace_all preforms differently than gsub
shruggie <- "¯\\\\_(\U30C4)_/¯"
y <- stringr::str_replace_all(x,"\\*\\*\\*",shruggie)
cat(paste(y, collapse = '\n'))
