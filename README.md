## RacepcR

RACE PCR Primer Design Tool


## Description

You can use this package to design 3' and 5'primers for Race PCR. The design is based on as described by Clonetech Race PCR manual. The resulting primers will have vector sequence automatically added to them.

## Installation 

library(devtools)

install_github("lrjoshi/RacepcR")


## Usage

getDNA(dnaseq)
quality (dnaseq)
gcbarplot(dnaseq)
get5prime(dnaseq,x)
get3prime(dnaseq,y)
Arguments

dnaseq	: it is the sequence of your DNA. For eg : "aaggcctt"

x	:position where you want to start your 5' primer

y	:position where you want to start your 3' primer


## Note

This package depends on Biostrings package. So, you should have already installed Biostrings package from Bioconductor.

See Also

https://github.com/lrjoshi/RacepcR

Examples

library (RacepcR)
library(Biostrings)
#function collection
getDNA("aaggccttcc")
quality ("aaggcct")
gcbarplot("aaaaagccggt")
get5prime("aaaggcggcggcttcggcgcgctcgtgctgctgctgcggcgctcctttcgctcgtcgctgctttctctcgct",30)
get3prime("aaaggcggccccctcttcggccttcgctgctgctgcggcgcggctcgcgctgctgctttgctgctcgggctcgt",10)
