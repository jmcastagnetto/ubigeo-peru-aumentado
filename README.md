[![DOI](https://zenodo.org/badge/345434096.svg)](https://zenodo.org/badge/latestdoi/345434096)

# Perú: Equivalencia de códigos de UBIGEO de RENIEC e INEI

En Perú, existen dos codificaciones no completamente equivalentes para Departamentos, Provincias y Distritos, la codificación de INEI y la de RENIEC.

Estos son los datos de equivalencias entre códigos de UBIGEO de RENIEC e INEI, separado a nivel de Departamento, Provincia y Distrito. Ademá, se ha agregado información suplementaria sobre clasificación en macro-regiones, asi como latitud, longitud, superficie y altitud, índices, etc.

Los arhivos están en tres formatos distintos: CSV, JSON, y RDS (formato de datos de R)

## Estructura de datos:

### Departamentos (`ubigeo_departamento.csv`)

| Campo                               | Descripción                                           |
| --------------------                | -------------                                         |
| `inei`                              | UBIGEO de INEI                                        |
| `reniec`                            | UBIGEO de RENIEC                                      |
| `departamento`                      | Nombre del Departamento                               |
| `iso_3166_2`                        | Código ISO-3166-2 para la Región                      |
| `fips`                              | Código FIPS para la Región                            |
| `superficie`                        | Superficie en Km<sup>2</sup>                          |
| `pob_densidad_2020`                 | Densidad Poblacional al 2020                          |
| `altitud`                           | Altitud en metros sobre el nivel del mar (msnm)       |
| `latitude`                          | Latitud Sur                                           |
| `longitude`                         | Longitud Oeste                                        |
| `indice_densidad_estado`            | Índice de Densidad del Estado                         |
| `indice_vulnerabilidad_alimentaria` | Índice de Vulnerabilidad a la Inseguridad Alimentaria |
| `idh_2019`                          | Índice de Desarrollo Humano                           |
| `pct_pobreza_total`                 | Porcentaje de Pobreza Total                           |
| `pct_pobreza_extrema`               | Porcentaje de Pobreza Extrema                         |


### Provincias (`ubigeo_provincia.csv`)

| Campo                               | Descripción                                            |
| --------------------                | -------------                                          |
| `inei`                              | UBIGEO de INEI                                         |
| `reniec`                            | UBIGEO de RENIEC                                       |
| `departamento`                      | Nombre del Departamento                                |
| `provincia`                         | Nombre de la Provincia                                 |
| `region`                            | Nombre de la Región                                    |
| `macroregion_inei`                  | Macroregión a la que pertenece la región, según INEI   |
| `macroregion_minsa`                 | Macroregión a la que pertene la región, según el MINSA |
| `iso_3166_2`                        | Código ISO-3166-2 para la Región                       |
| `fips`                              | Código FIPS para la Región                             |
| `superficie`                        | Superficie en Km<sup>2</sup>                           |
| `pob_densidad_2020`                 | Densidad Poblacional al 2020                           |
| `altitud`                           | Altitud en metros sobre el nivel del mar (msnm)        |
| `latitude`                          | Latitud Sur                                            |
| `longitude`                         | Longitud Oeste                                         |
| `indice_densidad_estado`            | Índice de Densidad del Estado                          |
| `indice_vulnerabilidad_alimentaria` | Índice de Vulnerabilidad a la Inseguridad Alimentaria  |
| `idh_2019`                          | Índice de Desarrollo Humano                            |
| `pct_pobreza_total`                 | Porcentaje de Pobreza Total                            |
| `pct_pobreza_extrema`               | Porcentaje de Pobreza Extrema                          |


### Distritos (`ubigeo_distrito.csv`)

| Campo                               | Descripción                                            |
| --------------------                | -------------                                          |
| `inei`                              | UBIGEO de INEI                                         |
| `reniec`                            | UBIGEO de RENIEC                                       |
| `departamento`                      | Nombre del Departamento                                |
| `provincia`                         | Nombre de la Provincia                                 |
| `distrito`                          | Nombre del Distrito                                    |
| `region`                            | Nombre de la Región                                    |
| `macroregion_inei`                  | Macroregión a la que pertenece la región, según INEI   |
| `macroregion_minsa`                 | Macroregión a la que pertene la región, según el MINSA |
| `iso_3166_2`                        | Código ISO-3166-2 para la Región                       |
| `fips`                              | Código FIPS para la Región                             |
| `superficie`                        | Superficie en Km<sup>2</sup>                           |
| `pob_densidad_2020`                 | Densidad Poblacional al 2020                           |
| `altitud`                           | Altitud en metros sobre el nivel del mar (msnm)        |
| `latitude`                          | Latitud Sur                                            |
| `longitude`                         | Longitud Oeste                                         |
| `indice_vulnerabilidad_alimentaria` | Índice de Vulnerabilidad a la Inseguridad Alimentaria  |
| `idh_2019`                          | Índice de Desarrollo Humano                            |
| `pct_pobreza_total`                 | Porcentaje de Pobreza Total                            |
| `pct_pobreza_extrema`               | Porcentaje de Pobreza Extrema                          |

### Centros Poblados (CCPP, `ubigeo_ccpp.csv`)

| Campo           | Descripción                  |
| --------------- | -------------                |
| `inei_ccpp`     | UBIGEO (INEI) del CCPP       |
| `inei_distrito` | UBIGEO (INEI) del Distrito   |
| `departamento`  | Departamento                 |
| `provincia`     | Provincia                    |
| `distrito`      | Distrito                     |
| `ccpp`          | Nombre del CCPP              |
| `tipo`          | Tipo de CCPP: Urbano o Rural |
| `latitude`      | Latitud Sur                  |
| `longitude`     | Longitud Oeste               |


## Descripciones de campos selectos:

- **Índice de Densidad del Estado**: Cuantifica la contribución del Estado al desarrollo humano en el territorio con la provisión de servicios sociales básicos. Las dimensiones utilizadas para la construcción del IDE, son: servicios básicos (salud, educación y saneamiento), conectividad e integración (acceso a electricidad), y ciudadanía (acceso a DNI). Valores cercanos al 1 indicaran una mayor presencia del Estado con la provisión de servicios en el territorio. (Fuente: CEPLAN, PNUD)

- **Índice de Vulnerabilidad a la Inseguridad Alimentaria**: Mide el grado de limitación o de incertidumbre a la disponibilidad de alimentos nutricionalmente adecuados e inocuos, o la capacidad limitada e incierta para adquirir alimentos adecuados en formas socialmente aceptables. (Fuente: CEPLAN, MIDIS, WFP)

- **Índice de Desarrollo Humano (IDH, 2019)**: Es construido en base a tres indicadores: esperanza de vida al nacer, proporción de la población mayor de 18 con educación secundaria, años de educación e ingreso familiar per cápita. Valores del IDH cercanos al 1 indicaran una mejor posición de desarrollo humano en el territorio. (Fuente: CEPLAN, PNUD)

- **Porcentaje de Pobreza Total**: Las cifras de pobreza monetaria total a nivel nacional y regional son del año 2020 y provienen de INEI (2021) "Informe técnico: Evolución de la pobreza monetaria 2009 - 2020". Las cifras de pobreza total en los niveles provincial y distrital son del año 2018 y provienen de INEI (2020) "Mapa de Pobreza Monetaria Provincial y Distrital 2018". (Fuente: CEPLAN, INEI)

- **Porcentaje de Pobreza Extrema**: Las cifras de pobreza extrema a nivel nacional y regional son del año 2020 y provienen de INEI (2021) "Informe técnico: Evolución de la pobreza monetaria 2009 - 2020". Las cifras de pobreza extrema en los niveles provincial y distrital son del año 2013 y provienen de INEI (2015) "Mapa de Pobreza Provincial y Distrital 2013". (Fuente: CEPLAN, INEI)

## Fuentes originales de datos:

- CEPLAN (https://www.ceplan.gob.pe/informacion-sobre-zonas-y-departamentos-del-peru/)
- MINSA (REUNIS: https://www.minsa.gob.pe/reunis/)
- FIPS (https://www.nist.gov/itl/current-fips)
- ISO-3166-2 (https://www.iso.org/standard/72483.html)
- PNUD-Perú (https://www.pe.undp.org/content/peru/es/home/library/poverty/el-reto-de-la-igualdad.html)

## Nota:

- Desde el 2021-08-24, se han separado los UBIGEOs a tres niveles: Departamento, Provincia y Distrito. Adicionalmente se han agregado los UBIGEOS (de INEI) para Centros Poblados (CCPP). En cada nivel se han agregado otros indicadores y porcentajes como información adicional.
- Desde el 2021-08-14, estos datos también están disponibles para explorar y usar en https://ubigeos-peru.glitch.me/, usando la plataforma de publicación de datos datasette.io y corriendo en glitch.com (sean buenos y no lo carguen demasiado, pues es una cuenta gratuita :-)
  - Un pequeño cambio, para poder usar mapas en la visualización, ha sido el renombrar "latidud" a "latitude", y "longitud" a "longitude" en ese aplicativo.
- El 2021-08-16 se han agregado varios nuevos distritos creados o que han cambiado de nombre. Aún no tengo los datos aumentados de latitud, longitud, altitud o superficie para ese grupo.
