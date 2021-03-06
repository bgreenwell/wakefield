% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/minute.R
\name{minute}
\alias{minute}
\title{Generate a Random Sequence of Minutes in H:M:S Format}
\usage{
minute(n, x = seq(0, 59, by = 1)/60, prob = NULL, random = FALSE,
  name = "Minute")
}
\arguments{
\item{n}{The number elements to generate.  This can be globally set within
the environment of \code{r_data_frame} or \code{r_list}.}

\item{x}{A vector of elements to chose from.}

\item{prob}{A vector of probabilities to chose from.}

\item{random}{logical.  If \code{TRUE} the times are randomized, otherwise the
times are sequential.}

\item{name}{The name to assign to the output vector's \code{varname}
attribute.  This is used to auto assign names to the column/vector name when
used inside of \code{r_data_frame} or \code{r_list}.}
}
\value{
Returns a random vector of minute time elements in H:M:S format.
}
\description{
Generate a random vector of minutes in H:M:S format.
}
\examples{
minute(20)
minute(20, random=TRUE)
pie(table(minute(2000, x = seq(0, 59, by = 10)/60, prob = probs(6))))
}
\seealso{
\code{\link[chron]{times}}
}
\keyword{minute}
\keyword{time}

