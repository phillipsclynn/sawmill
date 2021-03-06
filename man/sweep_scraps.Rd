% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sweep_scraps.R
\name{sweep_scraps}
\alias{sweep_scraps}
\title{Write Unusable Factors to a CSV}
\usage{
sweep_scraps(csv_path = file.choose())
}
\arguments{
\item{csv_path}{string: a path to write the .CSV.}
}
\value{
A .CSV.
}
\description{
\code{sweep_scraps()} writes unusable factors -- trimmed from timber
  to scrap_pile by \code{\link{trim_scraps}} -- to a .CSV.
}
