#### Setup ####

usethis::use_r(name = "wrangle.R")
usethis::use_r(name = "plots.R")
usethis::use_r(name = "plan.R")
file.create("_drake.R")
#file.create("make.R") eesayons de modifier celui que l'on a déjà
dir.create("output")
#dir.create("text") #on peut aussi utliser notre répertoire "exercices" ici ;)
dir.create("output/plots")
dir.create("output/text")

# add needed packages
usethis::use_package("dplyr")
usethis::use_package("ggplot2")
usethis::use_package("magrittr")
usethis::use_package("forcats")
usethis::use_package("fishualize")
usethis::use_package("sf")
usethis::use_package("drake")

# ignore files
usethis::use_build_ignore(".drake")
usethis::use_build_ignore("_drake.R")
usethis::use_build_ignore("make.R")
usethis::use_git_ignore(".drake")
usethis::use_build_ignore("output/")
usethis::use_build_ignore("text/")
