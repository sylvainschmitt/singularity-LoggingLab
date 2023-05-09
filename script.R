# pars
cores <- 30

# libs
library(LoggingLab)

# code
Rslt <- loggingsimulation(
  inventory = Paracou6_2016,
  plotmask = PlotMask, topography = DTMParacou,
  creekverticaldistance = CreekDistances$distvert,
  creekhorizontaldistance = CreekDistances$disthorz,
  speciescriteria = SpeciesCriteria,
  volumeparameters = ForestZoneVolumeParametersTable,
  scenario = "manual",
  objective = 30, fuel = "2", diversification = TRUE, winching = "2",
  directionalfelling = "2", specieslax = FALSE, objectivelax = TRUE,
  crowndiameterparameters = ParamCrownDiameterAllometry,
  advancedloggingparameters = loggingparameters(),
  iter = 30, cores = cores)

# save
save(Rslt, file = "simulation.Rdata")
