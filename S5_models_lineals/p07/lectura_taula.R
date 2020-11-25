A = scan(text = "SB1  1120  Matoll  60.0  2.52  Alt  28  8  1.68 
SB2  1200  Alzina  45.5  2.80  Alt  19  5  1.69 
SB3  1400  Pi  58.0  3.10  Alt  9  4  1.40 
SB4  1520  Matoll  72.5  2.28  Mig  18  4  1.27 
SB5  1750  Pi  67.5  2.77  Alt  119  12  1.34 
SB6  2150  Pastura  89.5  1.46  Baix  135  14  2.40 
SB7  2200  Pi  93.5  2.10  Mig  110  13  2.54 
SB8  1840  Matoll  76.0  2.37  Mig  138  14  2.34 
SB9  1640  Matoll  61.5  1.93  Baix  54  10  2.22", what = character())

M = matrix(A, byrow = TRUE, nrow = 9)


library(tidyverse)
taula = tibble(
  lloc = M[,1],
  elevacio = as.numeric(M[,2]),
  vegetacio = M[,3],
  cobertura = as.numeric(M[,4]),
  vertical = as.numeric(M[,5]),  
  habitat = M[,6],
  abundancia = as.numeric(M[,7]), 
  riquesa = as.numeric(M[,8]),
  diversitat = as.numeric(M[,9])
)
