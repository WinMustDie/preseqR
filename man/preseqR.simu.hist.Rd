\name{preseqR.simu.hist}
\alias{preseqR.simu.hist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    Simulating a histogram 
}
\description{
    Generating a histogram based on a Poisson mixture model. 
}
\usage{
  preseqR.simu.hist(L=1e8, t, FUN)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{L}{
    A positive integer, the number of species in a population.
}
  \item{t}{
    A positive interger, the relative sample size to the inital sample.
  }
  \item{FUN}{
    An RNG generating non negative real number.
  } 
}
\details{
  The function uses a compound Poisson model to generate a sample of size n. 
  It assumes for each species the number of individuals captured in a sample follows
  a Poisson process. The Poisson rates among species are generated by a given
  function \code{FUN}.

  The function \code{FUN} must take an argument indicating the number of random
   numbers generated and return a vector of generated numbers. 
}
\value{
    A two-column matrix.  
    The first column is the frequency \eqn{j = 1,2,\dots}; and the second column
    is \eqn{n_j}, the number of species with each species represented \eqn{j}
    times in the initial sample. The first column must be sorted in an
    ascending order.
}
\author{
  Chao Deng
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
## load library
library(preseqR)
## construct a RNG
f <- function(n) {
  rgamma(n, shape=0.5, scale=1)
}

preseqR.simu.hist(L=1e5, t=1, f)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Simulation, Sampling, Mixture of Poisson}
