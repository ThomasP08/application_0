# pour rendre le projet plus propre 
lintr::use_lintr(type = "tidyverse")
lintr::lint("script.R",linters_with_defaults(line_length_linter=line_length_linter(100)))
styler::style_file("script.R")
