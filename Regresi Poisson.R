# Import Dataset
library(readxl)
df = read_excel("Discoloration.xlsx")
attach(df)
df1 = data.frame(Discoloration_Defects, Hours_Since_Cleanse,
                 factor(Size_of_Screw), Temperature)
head(df1,5)

#Statistika Deskriptif
library(pastecs)
stat.desc(df1[,-3])

# Uji Asumsi Multikoliniearitas
linmod = lm(Discoloration_Defects~., data=df1)
library(car)
vif(linmod)

# Model Regresi Poisson
model_pois = glm(Discoloration_Defects~., family = poisson, data = df1)
model_pois

# 1. Uji Serentak
anova(model_pois)

# 2. Uji Parsial
summary(model_pois)

# 3. Uji Equidispersi
summary(model_pois)

# Model Terbaik
model_pois = glm(Discoloration_Defects~., family = poisson, data = df1)
summary(model_pois)
