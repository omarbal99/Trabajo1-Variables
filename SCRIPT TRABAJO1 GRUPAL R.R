#VARIABLE DEPENDIENTE DESIGUALDAD

datagini <- Data_Desigualdad_Gini_BM

datagini$`Country Code` = NULL
datagini$`Series Code` = NULL
datagini$`Series Name` = NULL
datagini[2:12]=lapply(datagini[2:12], as.numeric)

names(datagini)
names(datagini)[1] <- "Pais"

datagini <- datagini[-c(26, 28, 29, 59, 61, 62, 63, 64, 71, 72, 75, 77, 80, 81, 82, 83, 84, 85, 93, 94, 95, 96, 98), ]
datagini <- datagini[-c(73, 75), ]


#VARIABLE INDEDEPENDIENTE % POBLACION URBANA (cambio por acceso servicios basicos)

PoblacionUrb <- Data_Poblacion_Urb_BM

PoblacionUrb$`Country Code` = NULL
PoblacionUrb$`Series Code` = NULL
PoblacionUrb$`Series Name` = NULL
PoblacionUrb[2:12]=lapply(PoblacionUrb[2:12], as.numeric)

names(PoblacionUrb)
names(PoblacionUrb)[1] <- "Pais"
