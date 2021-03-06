% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_grain.R
\name{check_grain}
\alias{check_grain}
\title{Check the Grain (Set of Numeric Fields) of Each Factor in Timber}
\usage{
check_grain(timber)
}
\arguments{
\item{timber}{a tibble of timber.}
}
\value{
A tibble of timber with additional column \emph{grain}.
}
\description{
\code{check_grain()} determines which set of numeric fields are used to specify each factor in timber (i.e. the factor's \emph{grain}).
}
\details{
Every factor in CEDAR is described quantitatively using a different set (or collection) of fields.
  The set of fields chosen depends on the type and format of the data available in the literature. We refer
  to the set of fields specified for each factor as the factor's \strong{grain}.

  There are several common sets of fields (i.e. \emph{grains}) in CEDAR that are \emph{recognized} by
  \code{check_grain()}. However, not all of these are necessarily \emph{usable}; only some \emph{grains}
  contain the fields required to calculate the parameters of a distribution describing a measure of association.

  \subsection{Raw Data Formats}{
     There are two types of two-by-two tables that can be populated in CEDAR: contingency
     tables, containing count data, and rate tables, containing rate data. The odds ratio may
     also be specified directly, provided the confidence intervals (CIs) are available.

     \emph{A Contingency Table}

     \tabular{lccc}{
                \tab AMR+ \tab AMR- \tab Total \cr
       Exposed  \tab A    \tab B    \tab M1    \cr
       Referent \tab C    \tab D    \tab M2    \cr
     }

     \emph{A Rate Table}

     \tabular{lccc}{
                \tab AMR+ \tab AMR- \tab Total \cr
       Exposed  \tab P\%  \tab R\%  \tab M1    \cr
       Referent \tab Q\%  \tab S\%  \tab M2    \cr
     }

     \emph{Odds Ratio}

     \tabular{lccc}{
       \tab Lower CI \tab Odds Ratio \tab Upper CI \cr
       \tab oddslo   \tab odds       \tab oddsup   \cr
     }

  }

  \subsection{Recognized Grains}{
    There are currently four recognized grains:

    \itemize{
           \item{con_table_pos_neg: A, B, C, D}
           \item{con_table_pos_tot: A, C, M1, M2}
           \item{rate_table_pos_tot: P, Q, M1, M2}
           \item{rate_table_pos_neg: P, R, Q, S}
           \item{odds_ratio: oddslo, odds, oddsup}
    }
  }

  \subsection{Unrecognized Grains}{
    If \code{check_grain()} fails to recognize the grain, it returns \code{NA}.

 }
}
