
#Exercício 1
a = c(1:20)
b = c(20:1)
c = c(c(1:20),c(19:1))
d = c(4,rep(c(6,3,4), times=11))
e = c(4,rep(c(6,3,4), times=12))
f = 0
for(i in 30:60){
  f = f + exp(i/10)*cos(i/10)
}


#Exercício 2
#a
r = 0
for (i in 10:100){
  r = r + i**3 + 4*i**2
}
#b
r = 0
for (i in 10:25){
  r = r + 2**i/i + 3**i/i**2
}


#Exercício 3
xVec <- sample(x = 0:999, size = 250, replace=T)
yVec <- sample(x = 0:999, size = 250, replace=T)
#a
vetor = xVec[seq(from=1, to=250, by=2)]
#b
vetor = yVec[seq(2,250)] - xVec[seq(1,249)]
#c
vetor = xVec[(1:248)] + 2*xVec[(2:249)] - xVec[(3:250)]


#Exercício 4
a = which(yVec > 600)
b = yVec[yVec > 600]
c = sqrt(abs(xVec - mean(xVec)))
d = length(xVec[xVec >= max(xVec) - 200])
e = length(xVec[xVec%%2 == 0])
f = xVec[seq(from=1, to=250, by=3)]


#Exercício 5
fibonacci = function(x){
  if(x < 3){
    stop("Valor precisa ser 3 ou maior")
  }
  a = c(1,1)
  for(i in 1:(x-2)){
    a = c(a,(a[i]+a[i+1]))
  }
  return(a)
}


#Exercicio 6
#skippei


#Exercicio 7
#Dwight = 1, Jim = 2, Kevin = 3, Michael = 4
#Posição no vetor = O que aquela pessoa sorteou
resultados = numeric(100000)
for(i in 1:100000){
  sorteio = sample(x = 1:4, size = 4, replace = FALSE)
  if(sorteio[1] == 1 || sorteio[2] == 2 || sorteio[3] == 3 || sorteio[4] == 4){
    resultados[i] = 0
  }
  else{
    resultados[i] = 1
  }
}
proporcao = mean(resultados == 0)


#Exercicio 8
v = c(1,2,3,4,5)
#com loop
num.impar = function(x) {
  qtd = 0
  for (i in x) {
    if (i %% 2 != 0) {
      qtd = qtd + 1
    }
  }
  return(qtd)
}
#sem loop
num.impar2 = function(x) {
  return(sum(x %% 2 != 0))
}