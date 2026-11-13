# Taller Introducción a R: primeros pasos en R y RStudio

Centro Académico de Cómputos (CACCS), Facultad de Ciencias Sociales, Universidad de Puerto Rico, Recinto de Río Piedras.
Viernes 13 de noviembre de 2026, de 8:00 a 10:00, salón 118.
Recurso: Dr. Rashid C. J. Marcano Rivera.

## Contenido

| Archivo | Qué es |
|---|---|
| `taller-primeros-pasos-R-2026-11-13.html` | La presentación. Ábranla en el navegador; con la tecla `F` se ve en pantalla completa. |
| `primeros-pasos.R` | El script del taller, paso a paso, con los ejercicios «Su turno». |
| `taller-primeros-pasos-R-2026-11-13.qmd` | La fuente de la presentación en Quarto. |
| `uprrp.scss`, `logos-combinados.png` | Tema y logos de la presentación. |
| `hojas-de-referencia/` | Hojas de referencia de Posit en español: `dplyr` (transformar datos), `ggplot2` (visualizar datos), `tidyr` (ordenar datos), y `readr` y `readxl` (importar datos), que comparten una hoja. |

## Antes de empezar

Necesitan R, RStudio y dos paquetes. Si los paquetes no están instalados, corran una sola vez:

```r
install.packages(c("tidyverse", "dslabs"))
```

Sin instalar nada, pueden usar [Posit Cloud](https://posit.cloud/) desde el navegador.

## Para seguir

- Wickham, Çetinkaya-Rundel y Grolemund, [*R para la Ciencia de Datos*](https://davidrsch.github.io/r4ds-es/), 2.ª edición en español: capítulos 1 a 8 y 28 (Quarto).
- Irizarry, [*Introducción a la ciencia de datos*](https://rafalab.dfci.harvard.edu/dslibro/): capítulos 1, 2, 4 y 7, y 39 y 40 (Git y proyectos).
- [Hojas de referencia de Posit](https://rstudio.github.io/cheatsheets/): las cuatro de la carpeta `hojas-de-referencia` y otras en español (Quarto, RStudio, `stringr`, `lubridate`, Git y GitHub).
- [*Happy Git and GitHub for the useR*](https://happygitwithr.com/), para conectar RStudio con GitHub.

Los datos de `gapminder` provienen del paquete `dslabs` (Irizarry).

Las hojas de referencia son de Posit Software, PBC, en la traducción al español de su [repositorio](https://github.com/rstudio/cheatsheets/tree/main/translations/spanish) (versión de mayo de 2024), con licencia [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.es). Aquí solo se les cambió el nombre de archivo.
