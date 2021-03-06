% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log_warnings.R
\name{log_warnings}
\alias{log_warnings}
\title{Log Warning Messages in the Console}
\usage{
log_warnings(expr, silentSuccess = FALSE, stopIsFatal = TRUE)
}
\arguments{
\item{expr}{line(s) of code, any warnings generated by which will be logged in the format
facilitated by \code{log_warnings}}
}
\description{
The \code{log_warnings()} function prints any warning messages or errors generated by
 the enclosed expression to the console. Besides the message text itself, the
 date and timestamp are displayed, in an easy-to-read, Java-like format. If a warning
 is the result of faulty input data, the exact cell locations responsible are indicated.
 It was adapted from https://stackoverflow.com/questions/1975110/printing-stack-trace-and-continuing-after-error-occurs-in-r.
 The original function was written by Alice Purcell (https://stackoverflow.com/users/125663/alice-purcell),
 distributed to Stack Overflow with permission from the Man Group.
}
