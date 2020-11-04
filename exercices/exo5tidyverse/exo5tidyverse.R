library(tidyverse)

panthera <- readr::read_delim("https://raw.githubusercontent.com/FRBCesab/datatoolbox/master/data/PanTHERIA_1-0_WR05_Aug2008.txt", delim = "\t")

panthera %>%
  mutate(
    order   = as_factor(MSW05_Order),
    family  = as_factor(MSW05_Family)
  ) %>% janitor::clean_names()


rename(panthera, adult_mass = '5-1_AdultBodyMass_g')


         dispersal_age = '7-1_DispersalAge_d',
         gestion = '9-1_GestationLen_d',
         home_range = '22-2_HomeRange_Indiv_km2',
         litters = '16-1_LittersPerYear',
         longevity_max = '17-1_MaxLongevity_m')

panthera %>% select(adult_mass, dispersal_age, gestion, home_range, litters, longevity_max)
