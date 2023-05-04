library(LoggingLab)
loggingsimulation1(Paracou6_2016,
                   plotmask = PlotMask, topography = DTMParacou,
                   creekverticaldistance = CreekDistances$distvert,
                   creekhorizontaldistance = CreekDistances$disthorz,
                   speciescriteria = SpeciesCriteria,
                   volumeparameters = ForestZoneVolumeParametersTable,
                   scenario = "manual", objective = 20,
                   fuel = "2", winching = "2", directionalfelling = "2", 
                   diversification = TRUE, specieslax = FALSE, objectivelax = TRUE,
                   crowndiameterparameters = ParamCrownDiameterAllometry,
                   advancedloggingparameters = loggingparameters())