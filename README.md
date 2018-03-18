## RacepcR

RACE PCR Primer Design Tool


## Description

You can use this package to design 3' and 5'primers for Race PCR. The design is based on as described by Clonetech Race PCR manual. The resulting primers will have vector sequence automatically added to them.

## Installation 

library(devtools)

install_github("lrjoshi/RacepcR")


## Usage

getDNA(dnaseq) #enter DNA Sequence and check length

quality (dnaseq)  #to see if your sequence contains character other than AGTC. 

gcbarplot(dnaseq)  #gives barplot of nucleotide content 

get5prime(dnaseq,x)  #gives you 5' primer 

get3prime(dnaseq,y)   #gives you 3' primer 


Arguments

dnaseq	: it is the sequence of your DNA. For eg : "aaggcctt"

x	:position where you want to start your 5' primer

y	:position where you want to start your 3' primer


## Note

This package depends on Biostrings package. So, you should have already installed Biostrings package from Bioconductor.


## Examples

library (RacepcR)

library(Biostrings)


getDNA("aaggccttcc")

quality ("aaggcct")

gcbarplot("aaaaagccggt")

get5prime("aaaggcggcggcttcggcgcgctcgtgctgctgctgcggcgctcctttcgctcgtcgctgctttctctcgct",30)


get3prime("aaaggcggccccctcttcggccttcgctgctgctgcggcgcggctcgcgctgctgctttgctgctcgggctcgt",10)
