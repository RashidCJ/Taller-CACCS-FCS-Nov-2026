# ---------------------------------------------------------------------------
# Taller Introducción a R: primeros pasos en R y RStudio
# Centro Académico de Cómputos (CACCS), Facultad de Ciencias Sociales, UPR-RP
# Viernes 13 de noviembre de 2026, de 8:00 a 10:00, salón 118
# Dr. Rashid C. J. Marcano Rivera
#
# Ejecuten cada línea con Ctrl + Enter (Windows) o Cmd + Return (Mac).
# ---------------------------------------------------------------------------

# Paso 3: R como calculadora -------------------------------------------------
1 + 2
13 / 2
2 ^ 6
sqrt(81)

# Paso 5: objetos -------------------------------------------------------------
x <- 4
x + 2

isla <- "Puerto Rico"   # texto, entre comillas
isla

bilingüe <- TRUE        # valor lógico
bilingüe

# Paso 6: vectores y funciones ------------------------------------------------
edades <- c(23, 31, 27, 45, 38, 22, 29)

mean(edades)    # media
sd(edades)      # desviación estándar
range(edades)   # mínimo y máximo
length(edades)  # cuántos valores hay

?mean           # la ayuda de la función
# mean("texto") # quiten el # para ver un error

# Su turno (5 minutos) ---------------------------------------------------------
# 1. Creen un vector horas_sueño con siete valores, uno por día de la semana.
# 2. Calculen la media, el mínimo (min()) y el máximo (max()).
# 3. Redondeen la media a un decimal con round(). Busquen en ?round cómo.


# Paso 7: paquetes ------------------------------------------------------------
# install.packages(c("tidyverse", "dslabs"))   # una sola vez
library(tidyverse)
library(dslabs)
data(gapminder)

# Paso 8: mirar los datos -----------------------------------------------------
glimpse(gapminder)
head(gapminder)
summary(gapminder)
# View(gapminder)

# Paso 9: transformar con dplyr -----------------------------------------------
gapminder |>
  filter(country %in% c("Puerto Rico", "Cuba", "Dominican Republic", "Jamaica"),
         year %in% c(1970, 1990, 2010)) |>
  select(country, year, life_expectancy, fertility) |>
  arrange(year, country)

gapminder |>
  filter(year == 2010) |>
  mutate(pib_per_cápita = gdp / population) |>
  group_by(continent) |>
  summarise(esperanza_media = mean(life_expectancy, na.rm = TRUE),
            pib_mediano = median(pib_per_cápita, na.rm = TRUE),
            países = n())

# Su turno (8 minutos) ---------------------------------------------------------
# 1. Filtren los datos de Puerto Rico y ordénenlos por año.
# 2. ¿En qué año alcanzó Puerto Rico su mayor esperanza de vida?
#    Usen arrange(desc(life_expectancy)).
# 3. Calculen la fertilidad media por continente en 1970 y en 2010.
#    Pista: group_by(continent, year).


# Paso 10: gráficos con ggplot2 -----------------------------------------------
gapminder |>
  filter(year == 2010) |>
  ggplot(aes(x = fertility, y = life_expectancy)) +
  geom_point()

gapminder |>
  filter(year == 2010) |>
  ggplot(aes(x = fertility, y = life_expectancy,
             colour = continent, size = population / 10^6)) +
  geom_point(alpha = 0.7) +
  labs(title = "Fertilidad y esperanza de vida, 2010",
       x = "Hijos por mujer", y = "Esperanza de vida (años)",
       colour = "Continente", size = "Población\n(millones)") +
  theme_minimal()

caribe <- c("Puerto Rico", "Cuba", "Dominican Republic", "Jamaica", "Haiti")

gapminder |>
  filter(country %in% caribe) |>
  ggplot(aes(x = year, y = life_expectancy, colour = country)) +
  geom_line(linewidth = 1.1) +
  labs(title = "Esperanza de vida en el Caribe, 1960 a 2016",
       x = "Año", y = "Esperanza de vida (años)", colour = "País") +
  theme_minimal()

# Su turno (8 minutos) ---------------------------------------------------------
# 1. Hagan el gráfico del Caribe con la fertilidad en lugar de la esperanza de vida.
# 2. Añadan otro país que les interese.
# 3. Guárdenlo: ggsave("mi-gráfico.png", width = 8, height = 5)


# Importar sus propios datos (referencia; no se corre hoy) --------------------
# datos <- read_csv("datos/encuesta.csv")              # CSV
# datos <- haven::read_sav("datos/encuesta.sav")       # SPSS
# datos <- haven::read_dta("datos/encuesta.dta")       # Stata
# datos <- readxl::read_excel("datos/encuesta.xlsx")   # Excel
