suppressMessages(library(tidyverse))

for(fn in list.files(pattern = "*.rds")) {
  ubigeos <- readRDS(fn)
  out <- str_remove(fn, "\\.rds$")
  json_fmt <- jsonlite::toJSON(ubigeos)
  write_file(
    json_fmt,
    file = glue::glue("{out}.json")
  )
}
¸