% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simout.r
\name{simout}
\alias{simout}
\title{Simulate error-prone test results for a user-defined vector of test times for each of the N subjects, for a user input NxP design matrix (Xmat).}
\usage{
simout(Xmat, testtimes, sensitivity, specificity, noevent, betas,
  design = "NMISS")
}
\arguments{
\item{Xmat}{a 300x1000 covariate matrix that we simulated independently from binomial distribution with p=0.4.}

\item{testtimes}{a vector of times at which self-reported outcomes are collected for all subjects.}

\item{sensitivity}{the sensitivity of the self-report.}

\item{specificity}{the specificity of the self-report.}

\item{noevent}{denotes the probability of remaining event free by study end (or the complement of cumulative incidence)}

\item{betas}{denotes the vector of regression coefficients associated with the set of biomarkers in the Cox PH model}

\item{design}{denotes whether tests are missing after first positive result. 'NMISS' denotes no missing test after first positive and 'NTFP' denotes all tests are missing after first positive. (The default is 'NMISS').}
}
\value{
data frame: simulated longitudinal form of observed test results [1 row per subject per test time]. 
The dimensions of this dataframe are N** x 3, where first column is the subject ID, second column is the test times and the third column is the binary test result [1 = positive, 
indicating event of interest has occurred; 0=negative].
}
\description{
This function simulates test results, subject to user-defined values of sensitivity, 
specificity, test times and matrix of covariates (Xmat). The first user-defined number of columns of the 
Xmat matrix are assumed to be true biomarkers, influencing the hazard function of the time to event of interest.
 In the reference group, event times are simulated assuming an exponential distribution, corresponding to 
 user-defined parameter for the cumulative incidence in the study period of 8 years [1-noevent]. 
 Assuming the PH model and user-defined vector of regression coefficients [betas], 
 the time to event for individuals in each covariate stratum is simulated. Assuming that all subjects are tested at the same test times [testtimes], 
 and user-defined values of sensitivity and specificity of the diagnostic test or self-report, test results are simulated at each test time, for each subject. 
 When the parameter 'design' is set to its default value ['NMISS'], we assume that there are no missing test results. When the parameter 'design' is set to 'NTFP', 
 no further test results are simulated following the first positive test result, for each subject.
}
\examples{
data(Xmat)
sim <- simout(Xmat, testtimes=1:4, sensitivity=1, specificity=1, noevent=0.7, 
              betas=c(rep(0.81, 5), rep(0, ncol(Xmat)-5)), design="NTFP")
}
