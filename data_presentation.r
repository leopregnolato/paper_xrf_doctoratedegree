library(ggplot2)

dados$s= factor(dados$s, levels= c())

ggplot(dados, aes(x=Station, y=Mean))+
  ggtitle("Ca")+
  labs(x = "", y = "Concentration means (‰ NIST 612)")+
  geom_point()+ 
  geom_errorbar(aes(ymin = IC.inf, ymax = IC.sup))+ 
  theme_minimal(base_size = 20)+
  theme(axis.text.x = element_text(angle = 90,vjust = 1))+
  geom_vline(xintercept = 4.5, linetype="dashed")+
  scale_y_log10()
