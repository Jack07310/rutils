% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{lag_xts}
\alias{lag_xts}
\title{Apply a time lag to an \emph{xts} time series.}
\usage{
lag_xts(x_ts, lag = 1, ...)
}
\arguments{
\item{x_ts}{an \emph{xts} time series.}

\item{lag}{integer equal to the number of time periods of lag (default is 1).}

\item{...}{additional arguments to function \code{xts::lag_xts()}.}
}
\value{
An \emph{xts} time series with the same dimensions and the same time
  index as the input \code{x_ts} time series.
}
\description{
Apply a time lag to an \emph{xts} time series.
}
\details{
Applies a time lag to an \emph{xts} time series and pads with the
  first and last values instead of \emph{NAs}.

  A positive lag argument \code{lag} means values from \code{lag} periods in
  the past are moved to the present. A negative lag argument \code{lag} moves
  values from the future to the present.  The function \code{lag()} is just a
  wrapper for function \code{lag_xts()} from package
  \href{https://cran.r-project.org/web/packages/xts/index.html}{xts}, but it
  pads with the first and last values instead of \emph{NAs}.
}
\examples{
# lag by 10 periods
rutils::lag_xts(rutils::env_etf$VTI, lag=10)
}

