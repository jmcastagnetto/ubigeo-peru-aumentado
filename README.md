# Equivalencia de codigo de UBIGEO: RENIEC e INEI (Perú)

Datos de equivalencias entre UBIGEOS de RENIEC e INEI, con información sobre clasificación en macro-regiones, asi como latitud, longitud y altitud del distrito.

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
| `superficie` | Superficie en Km^2^ del Distrito |
| `altitud` | Altitude del Distrito en metros sobre el nivel del mar (msnm) |
| `latitud` | Latitude del Distrito |
| `longitud` | Longitude del Distrito |

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
