suppressMessages(library(tidyverse))

ubigeos <- read_csv(
  "ubigeos_reniec_inei_aumentado.csv",
  col_types = cols(
    .default = col_character(),
    superficie = col_double(),
    altitud = col_double(),
    latitude = col_double(),
    longitude = col_double()
  )
) %>%
  mutate_at(
    vars(departamento_inei, departamento, provincia_inei, provincia,
      distrito, region, macroregion_inei, macroregion_minsa,
      iso_3166_2, fips),
    factor
  )

saveRDS(
  ubigeos,
  file = "ubigeos_reniec_inei_aumentado.rds"
)

haven::write_dta(
  ubigeos,
  path = "ubigeos_reniec_inei_aumentado.dta"
)

json_fmt <- jsonlite::toJSON(ubigeos)
write_file(
  json_fmt,
  file = "ubigeos_reniec_inei_aumentado.json"
)

