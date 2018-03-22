# RacePCR Primer Desigmer
library(Biostrings)
library(stringr)

getDNA<-function(dnaseq){
  dnaseq= DNAString(dnaseq)
  dnaseq=tolower(dnaseq)
  print (paste ("This is your DNA sequence :-",dnaseq))
  nt=as.integer(nchar(dnaseq))

  #finding length of your DNA Sequence
  print (paste("Length of your DNA sequence is",nt))
}






#to check if DNA sequence is correct

library(stringr)
quality<-function(dnaseq){
  fer= dnaseq
  fer=tolower(fer)
  for (i in 1:nchar(fer)){
  ana=substr(fer,i,i)
  if (ana=="a"|ana=="g"|ana=="c"|ana=="t"){
  }else {
    stop ("Your sequence contains some unrecognizable characters")
  }
}

print ("Great ! Your DNA Sequence is Okay.")
}



#Barplot of GC content
gcbarplot<-function(dnaseq){
  fer=dnaseq
  library(stringr)
  #convert to lower casr
  fer=tolower(fer)
  #define characters of DNA
  dna=c("a","g","c","t")
  #vector for storing results
  num_dna=vector(mode="integer",length=4)
  #calculate number of each nucleotide
  for (j in seq_along(dna)){
   num_aux=str_count(tolower(fer),dna[j])
   num_dna[j]=sum(num_aux)
  }
  #add nucleotide names
  names(num_dna)=dna
  num_dna
  barplot(num_dna,main="Nucleotide content")
}

#Designing 5 Primer primer
get5prime<-function (dnaseq,primer5){
  primer5=as.integer(primer5)
  almost=substr(dnaseq,primer5-25,primer5)
  ready=paste("GATTACGCCAAGCTT",almost)
  #removespaces
  final=gsub(" ","",ready)
  print (paste("This is your five prime primer:",final))
}




#Designing 3 prime primer
get3prime<-function (dnaseq,primer3){
  primer3=as.integer(primer3)
  almost3=substr(dnaseq,primer3,primer3+25)
  ready3=paste("GATTACGCCAAGCTT",almost3)
  #removespaces
  final3=gsub(" ","",ready3)
  print (paste("This is your three prime primer:",final3))
}


#Thats all
#function collection
#getDNA("aaggccttcc")
quality ("aaggcct")
#gcbarplot("aaaaagccggt")
#get5prime("aaaggcggcggcttcggcgcgctcgtgctgctgctgcggcgctcctttcgctcgtcgctgctttctctcgct",30)
#get3prime("aaaggcggccccctcttcggccttcgctgctgctgcggcgcggctcgcgctgctgctttgctgctcgggctcgt",10)
