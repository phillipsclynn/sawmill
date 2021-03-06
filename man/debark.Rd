% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/debark.R
\name{debark}
\alias{debark}
\title{Standardize Column Names or "Debark" Timber}
\usage{
debark(timber, cedar_version = 2)
}
\arguments{
\item{timber}{a tibble of timber.}

\item{cedar_version}{numeric [1,2]: the version of CEDAR that created the export..}
}
\value{
A tibble of timber with standardized column names.
}
\description{
\code{debark()} standardizes the column names of timber for use in \code{sawmill}.
}
