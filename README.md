[![DOI](https://zenodo.org/badge/345434096.svg)](https://zenodo.org/badge/latestdoi/345434096)

# Perú: Equivalencia de códigos de UBIGEO de RENIEC e INEI

En Perú, existen dos codificaciones no completamente equivalentes para Departamentos, Provincias y Distritos, la codificación de INEI y la de RENIEC.

Estos son los datos de equivalencias entre códigos de UBIGEO de RENIEC e INEI, con información agregada sobre clasificación en macro-regiones, asi como latitud, longitud, superficie y altitud del distrito.

## Estructura de datos:

| campo | contenido |
|-------|-----------|
| `reniec` | UBIGEO distrital de RENIEC |
| `inei` | UBIGEO distrital de INEI |
| `departamento_inei` | UBIGEO departamental de INEI |
| `departamento` | Nombre del Departamento |
| `provincia_inei` | UBIGEO provincial de INEI |
| `provincia` | Nombre de la Provincia |
| `distrito` | Nombre del Distrito |
| `region` | Nombre de la Región |
| `macroregion_inei` | Macroregión a la que pertenece la región, según INEI | 
| `macroregion_minsa` | Macroregión a la que pertene la región, según el MINSA |
| `iso_3166_2` | Código ISO-3166-2 para la Región |
| `fips` | Código FIPS para la Región |
| `superficie` | Superficie en Km<sup>2</sup> del Distrito |
| `altitud` | Altitud del Distrito en metros sobre el nivel del mar (msnm) |
| `latitud` | Latitud del Distrito |
| `longitud` | Longitud del Distrito |

## Archivos de datos:

- CSV: [ubigeos_reniec_inei_aumentado.csv](ubigeos_reniec_inei_aumentado.csv)
- JSON: [ubigeos_reniec_inei_aumentado.json](ubigeos_reniec_inei_aumentado.json)
- RDS (para R): [ubigeos_reniec_inei_aumentado.rds](ubigeos_reniec_inei_aumentado.rds)
- DTA (para Stata): [ubigeos_reniec_inei_aumentado.dta](ubigeos_reniec_inei_aumentado.dta)


## Fuentes originales de datos:

- CEPLAN (https://www.ceplan.gob.pe/informacion-sobre-zonas-y-departamentos-del-peru/)
- MINSA (REUNIS: https://www.minsa.gob.pe/reunis/)
- FIPS (https://www.nist.gov/itl/current-fips)
- ISO-3166-2 (https://www.iso.org/standard/72483.html)

## Nota:

- Desde el 2021-08-14, estos datos también están disponibles para explorar y usar en https://ubigeos-peru.glitch.me/, usando la plataforma de publicación de datos datasette.io y corriendo en glitch.com (sean buenos y no lo carguen demasiado, pues es una cuenta gratuita :-)
  - Un pequeño cambio, para poder usar mapas en la visualización, ha sido el renombrar "latidud" a "latitude", y "longitud" a "longitude" en ese aplicativo.
