library(Factoshiny)

#PCA: importe os dados e nomeie como "dados" durante a importação

res_pca = PCAshiny(dados)

#matriz de correlação

correlacao = cor(dados)

corrplot::corrplot(correlacao, type="upper")
