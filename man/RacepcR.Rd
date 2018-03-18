\name{RacepcR}
\alias{RacepcR}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Race PCR Primer Designer
}
\description{
You can use this package to design 3' and 5'primers for Race PCR. The design is based on as described by Clonetech Race PCR manual. The resulting primers will have vector sequence automatically added to them.
}
\usage{
getDNA(dnaseq)
quality (dnaseq)
gcbarplot(dnaseq)
get5prime(dnaseq,x)
get3prime(dnaseq,y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dnaseq}{
it is the sequence of your DNA. For eg : "aaggcctt"
}
\item{x}{
position where you want to start your 5' primer
}
\item{y}{
position where you want to start your 3' primer
}
}
\Dependency{

}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  Lok Raj Joshi
}
\note{
This package depends on Biostrings package. So, you should have already installed Biostrings package from Bioconductor.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
https://github.com/lrjoshi/RacepcR
}
\examples{
library (RacepcR)
library(Biostrings)
#function collection
getDNA("aaggccttcc")
quality ("aaggcct")
gcbarplot("aaaaagccggt")
get5prime("aaaggcggcggcttcggcgcgctcgtgctgctgctgcggcgctcctttcgctcgtcgctgctttctctcgct",30)
get3prime("aaaggcggccccctcttcggccttcgctgctgctgcggcgcggctcgcgctgctgctttgctgctcgggctcgt",10)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~RACEPCR }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~primers }% __ONLY ONE__ keyword per line
