# speeding-up with multipe cores
options(Ncpus = parallel::detectCores()-1)
# devtools
install.packages(c(
  'devtools'
), repos = "https://cloud.r-project.org",
dependencies = c('Depends', 'Imports', 'LinkingTo'))
# LoggingLab
devtools::install_github("VincyaneBadouard/LoggingLab",
                         dependencies = c('Depends', 'Imports', 'LinkingTo'))