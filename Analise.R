#Gabriel Batista 
#Gr?fico de liberdade economica
#"scoreTotal" ? a variavel onde est?o armazenados os valores de liberdade de todos os paises
boxplot(scoreTotal, main="?ndice de Liberdade Econ?mica Mundial (2019)")

#Histograma de liberdade economica
hist(scoreTotal, main = "?ndice de Liberdade Econ?mica Mundial (2019)", col = 2, xlab = " ", ylab = "Frequ?ncia")

#Divis?o de valores entre menores e maiores que 50 pontos
menorq50<-subset(scoreTotal,scoreTotal<50)
menorq50
maiorq50<-subset(scoreTotal,scoreTotal>50)
maiorq50
hist(menorq50, main = "?ndices menores que 50 pontos (2019)", col = 2, xlab = " ", ylab = "Frequ?ncia")
hist(maiorq50, main = "?ndices maiores que 50 pontos (2019)", col = 2, xlab = " ", ylab = "Frequ?ncia")

#Liberdade economica por regi?o
americas<-scan()
americas
asiapacific<-scan()
europe<-scan()
middleEastNorthAfrica<-scan()
subSaharianAfrica<-scan()
boxplot(americas, asiapacific, europe, middleEastNorthAfrica, subSaharianAfrica, main="Liberdade Econ?mica Mundial por regi?o (2019)", names = c("Am?ricas", "AsiaPacific", "Europe", "MiddleEast/North Africa", "SubSaharian Africa"))

#PIB per capita por regi?o
pibAmericas<-scan()
pibAsiaPacific<-scan()
pibEurope<-scan()
pibMeNa<-scan()
pibSubSaharian<-scan()
boxplot(pibAmericas, pibAsiaPacific, pibEurope, pibMeNa, pibSubSaharian, main="PIB per capita por regi?o (2019)", names = c("Am?ricas", "AsiaPacific", "Europe", "MiddleEast/North Africa", "SubSaharian Africa"))

#Desemprego por regi?o
unempAmer<-scan()
unempAsia<-scan()
unempEurope<-scan()
unempMeNa<-scan()
unempSubAfrica<-scan()
boxplot(unempAmer, unempAsia, unempEurope, unempMeNa, unempSubAfrica, main="Desemprego em porcentagem por regi?o (2019)", names = c("Am?ricas", "AsiaPacific", "Europe", "MiddleEast/North Africa", "SubSaharian Africa"))

#Infla??o por regi?o
inflaAmer<-scan()
inflaAsia<-scan()
inflaEurope<-scan()
inflaMeNa<-scan()
inflaSubAfrica<-scan()
boxplot(inflaAmer, inflaAsia, inflaEurope, inflaMeNa, inflaSubAfrica, main="Infla??o em porcentagem por regi?o (2019)", names = c("Am?ricas", "AsiaPacific", "Europe", "MiddleEast/North Africa", "SubSaharian Africa"))

#Indice de liberdade economica por regi?o (re-escaneamento)
scoreAmer<-scan()
scoreAsia<-scan()
scoreEuro<-scan()
scoreMeNA<-scan()
scoreSubAfrica<-scan()

#Gr?ficos de rela??o entre liberdade e PIB regionais
plot(scoreAmer, pibAmericas, main = "Rela??o entre liberdade e PIB - Americas (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "PIB per capita")
plot(scoreAsia, pibAsiaPacific, main = "Rela??o entre liberdade e PIB - Asia-Pac?fico (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "PIB per capita")
plot(scoreEuro, pibEurope, main = "Rela??o entre liberdade e PIB - Europa (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "PIB per capita")
plot(scoreMeNA, pibMeNa, main = "Rela??o entre liberdade e PIB - Oriente M?dio/Norte da ?frica (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "PIB per capita")
plot(scoreSubAfrica, pibSubSaharian, main = "Rela??o entre liberdade e PIB - ?frica Sub-Saariana (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "PIB per capita")

#Gr?ficos de rela??o entre liberdade e desemprego regionais
plot(scoreAmer, unempAmer, main = "Rela??o entre liberdade e desemprego - Americas (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Desemprego(%)")
plot(scoreAsia, unempAsia, main = "Rela??o entre liberdade e desemprego - Asia-Pac?fico (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Desemprego(%)")
plot(scoreEuro, unempEurope, main = "Rela??o entre liberdade e desemprego - Europa (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Desemprego(%)")
plot(scoreMeNA, unempMeNa, main = "Rela??o entre liberdade e desemprego - Oriente M?dio/Norte da ?frica (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Desemprego(%)")
plot(scoreSubAfrica, unempSubAfrica, main = "Rela??o entre liberdade e desemprego - ?frica Sub-saariana (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Desemprego(%)")

#Gr?ficos de rela??o entre liberdade e infla??o regionais
plot(scoreAmer, inflaAmer, main = "Rela??o entre liberdade e infla??o - Americas (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Infla??o(%)")
plot(scoreAsia, inflaAsia, main = "Rela??o entre liberdade e infla??o - Asia-Pac?fico (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Infla??o(%)")
plot(scoreEuro, inflaEurope, main = "Rela??o entre liberdade e infla??o - Europa (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Infla??o(%)")
plot(scoreMeNA, inflaMeNa, main = "Rela??o entre liberdade e infla??o - Oriente M?dio/Norte da ?frica (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Infla??o(%)")
plot(scoreSubAfrica, inflaSubAfrica, main = "Rela??o entre liberdade e infla??o - ?frica Sub-saariana (2019)", col = 2, xlab = "Liberdade Econ?mica", ylab = "Infla??o(%)")

#Gr?ficos de todas as informa??es(Liberdade, PIB, desemprego e infla??o) de cada regi?o
boxplot(scoreAmer, pibAmericas, unempAmer, inflaAmer, main = "Am?ricas (2019)", names = c("Liberdade", "PIB per capita", "Desemprego(%)", "Infla??o(%)"))
boxplot(scoreAsia, pibAsiaPacific, unempAsia, inflaAsia, main = "Asia-Pac?fico (2019)", names = c("Liberdade", "PIB per capita", "Desemprego(%)", "Infla??o(%)"))
boxplot(scoreEuro, pibEurope, unempEurope, inflaEurope, main = "Europa (2019)", names = c("Liberdade", "PIB per capita", "Desemprego(%)", "Infla??o(%)"))
boxplot(scoreMeNA, pibMeNa, unempMeNa, inflaMeNa, main = "Oriente m?dio e norte da ?frica (2019)", names = c("Liberdade", "PIB per capita", "Desemprego(%)", "Infla??o(%)"))
boxplot(scoreSubAfrica, pibSubSaharian, unempSubAfrica, inflaSubAfrica, main = "?frica sub-saariana (2019)", names = c("Liberdade", "PIB per capita", "Desemprego(%)", "Infla??o(%)"))
