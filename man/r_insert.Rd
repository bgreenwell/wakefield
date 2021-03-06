% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/r_insert.R
\name{r_insert}
\alias{r_insert}
\title{Insert Data Frames Into \code{r_data_frame}}
\usage{
r_insert(x, name = "Inserted")
}
\arguments{
\item{x}{A \code{\link[base]{data.frame}} to add a \code{seriesname}
attribute (i.e., \code{attributes(x)[["seriesname"]]})}

\item{name}{A name to assign to \code{attributes(x)[["seriesname"]]}.}
}
\value{
Returns a \code{\link[base]{data.frame}} with a
\code{attributes(x)[["seriesname"]]} assigned.
}
\description{
Safely insert \code{\link[base]{data.frame}} objects into a
\code{\link[wakefield]{r_data_frame}} or \code{\link[wakefield]{r_list}}.
}
\examples{
dat <- dplyr::data_frame(
    Age_1 = age(100), Age_2 = age(100), Age_3 = age(100),
    Smokes = smokes(n=100),
    Sick = ifelse(Smokes, sample(5:10, 100, TRUE), sample(0:4, 100, TRUE)),
    Death = ifelse(Smokes, sample(0:1, 100, TRUE, prob = c(.2, .8)),
        sample(0:1, 100, TRUE, prob = c(.7, .3)))
)

r_data_frame(100,
   id,
   r_insert(dat)
)

r_list(10,
   id,
   r_insert(dat)
)
}
\seealso{
\code{\link[wakefield]{seriesname}}
}
\keyword{insert}

