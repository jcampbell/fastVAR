\name{VARX}
\alias{VARX}
\title{Vector Autoregression with Exogenous Inputs}
\usage{
  VARX(y, x, p = 1, b = 1, intercept = T, weights = NULL,
    l2penalty = NULL, getdiag = T)
}
\arguments{
  \item{y}{A matrix of endogenous variables where each
  column represents an individual time series}

  \item{x}{A matrix of exogenous variables where each
  column represents an individual time series}

  \item{p}{the number of lags of Y to include in the design
  matrix}

  \item{b}{the number of lags to X include in the design
  matrix}

  \item{intercept}{logical.  If true include the intercept
  term in the model}

  \item{weights}{weights applied to the multiresponse
  linear regression.  Better predictions might come from
  weighting observations far in the past less so they
  impact the objective value less.  Either NULL,
  "exponential", or "linear"}

  \item{l2penalty}{a ridge regression penalty, useful when
  the design matrix is very wide, which may happen if p is
  large.}

  \item{getdiag}{logical.  If true, return diagnostics}
}
\description{
  Fit a VAR model by creating the lagged design matrix and
  fitting a multivariate response matrix to it.  Note that
  the VARX response matrix omits the first max(p,b)
  responses from the input matrix Y.  This is because
  observations in Y are modeled by the max(p,b) previous
  values, so the first max(p,b) observations cannot be
  modeled.
}
\examples{
data(Canada)
  x = matrix(rnorm(84*4), 84, 4)
  VARX(Canada, x, 3, 2, intercept=F)
}

