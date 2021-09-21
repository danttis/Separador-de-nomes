nomes = read.table("~/separador de nomes/nomes.csv", quote="\"", comment.char="")
NOMES = c("NULL", "NULL")
SOBRENOMES = c("NULL", "NULL", "NULL")
for(i in 1:length(nomes[,1])){
   if(!(is.na(nomes[i,4:5]))){
     NOMES = rbind(NOMES, c(nomes[i,1],nomes[i,2]))
     SOBRENOMES = rbind(SOBRENOMES, c(nomes[i,3],nomes[i,4],nomes[i,5]))
   }
  else{
    NOMES = rbind(NOMES, c(nomes[i,1], NA))
    SOBRENOMES = rbind(SOBRENOMES, c(nomes[i,2],nomes[i,3],NA))
  }
}
NOMES = NOMES[-1,]
SOBRENOMES = SOBRENOMES[-1,]
View(NOMES)
View(SOBRENOMES)
