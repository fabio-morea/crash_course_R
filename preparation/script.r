library(tidyverse)

dati <- read.csv('./data/prov_trieste_2022.csv',  
                skip = 2, 
                encoding = "UTF-8",
                quote = "\"")

colnames(dati)
nrow(dati)
ncol(dati)
str(dati)
dati_solo_trieste <- dati %>%
    filter(Denominazione == "Trieste")%>%
    select(Età, Totale.Maschi, Totale.Femmine)%>%
    filter(Età != "Totale")%>%
    mutate(eta = as.numeric(Età))%>%
    filter(eta<=100)%>%
    select(-Età)

colnames(dati_solo_trieste)
nrow(dati_solo_trieste)
ncol(dati_solo_trieste)
str(dati_solo_trieste)

com_trieste_22 <- dati_solo_trieste %>%
    mutate(popolazione = Totale.Maschi + Totale.Femmine) %>%
    mutate(anno=2022)%>%
    select(anno,eta,popolazione)

colnames(com_trieste_22)
nrow(com_trieste_22)
ncol(com_trieste_22)
str(com_trieste_22)

write.csv (com_trieste_22, "./results/com_trieste_2022.csv", 
    row.names=FALSE,
    fileEncoding = "UTF-8",
    quote = FALSE )



ggplot(com_trieste_22, aes(x=eta, y=popolazione))+
    geom_col( fill="blue", color="white")+
    coord_flip () + 
    theme_minimal() + 
    ggtitle("Popolazione residente nel comune di Trieste al 1° gennaio 2022")

#ggsave('./results/grafico.png') 



ggplot(com_trieste_22, aes(x=eta, y=popolazione))+
    geom_col( fill="green", color="white")+
    coord_flip () + 
    theme_minimal() + 
    ggtitle("Popolazione residente nel comune di Trieste al 1° gennaio 2022")



# a single graph printed to PDF
pdf("tmp.pdf")
plot(com_trieste_22$popolazione)



ggplot(com_trieste_22, aes(x=eta, y=popolazione))+
    geom_col( fill="green", color="white")+
    coord_flip () + 
    theme_minimal() + 
    ggtitle("Popolazione residente nel comune di Trieste al 1° gennaio 2022")

dev.off()


# use a notebook to produce more complex PDF output


 
