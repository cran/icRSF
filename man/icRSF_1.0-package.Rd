\name{icRSF_1.0-package}
\alias{icRSF_1.0-package}
\alias{icRSF_1.0}
\docType{package}
\title{
Implements the icRSF algorithm to calculate variable importance
}
\description{
Implements a modification to the Random Survival Forests algorithm [1] for obtaining variable importance in high dimensional datasets. The proposed algorithm is appropriate for settings in which a silent event is observed through sequentially administered, error-prone self-reports or laboratory based diagnostic tests. The modified algorithm incorporates a formal likelihood framework that accommodates sequentially administered, error-prone self-reports or laboratory based diagnostic tests [2]. The original Random Survival Forests algorithm is modified by the introduction of a new splitting criterion based on a likelihood ratio test statistic [3].
}
\details{
\tabular{ll}{
Package: \tab icRSF\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2016-01-01\cr
License: \tab GPL (>= 2)\cr
}
}
\author{
Hui Xu and Raji Balasubramanian

Maintainer: Hui Xu <huix@schoolph.umass.edu> and Raji Balasubramanian <rbalasub@schoolph.umass.edu>
}
\references{
[1] Ishwaran, H. and Kogalur, U. B. and Blackstone, E. H. and Lauer, M. S. (2008).  Random Survival Forests, Annals of Applied Statistics, Vol.2, Number 3, pp. 841-860. <DOI: 10.1214/08-AOAS169>.

[2] Gu, X., Ma, Y., Balasubramanian, R. (2015). Semi-parametric time to event models in the presence of error-prone, self-reported outcomes - with application to the Women's Health Initiative, Annals of Applied Statistics, 9 (2), 714-730. <DOI: 10.1214/15-AOAS810>

[3] Xu, H., Gu, X., Tadesse, M. G., Balasubramanian, R. (2016). A modified Random Survival Forests algorithm for variable selection in the presence of imperfect self-reports or laboratory based diagnostic tests, Submitted to Journal of Computational and Graphical Statistics. 


}

\keyword{package}

