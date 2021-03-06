% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_survTicks.R
\name{geom_survTicks}
\alias{geom_survTicks}
\title{create the ticks of a survival curve as a layer ready to be added to a ggplot object}
\usage{
geom_survTicks(data, mapping, ticks = "segment", ...)
}
\arguments{
\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{mapping}{aes object, created with aes(). Provide x (time) and y (status). Optionally you can provide color and linetype to distinguish conditions. For the status: NA will be irgnored, 1 = dropped out, 2 = dead, any other value = alive.}

\item{ticks}{character, either "segment" or "point". If specified as "point", additional geom_point options can be specified, such as shape}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}
}
\value{
a ggplot2 layer object (geom_segment for the ticks) that can directly be added to a ggplot2 object
}
\description{
Imports:
ggplot2
}
\details{
calls the geom_surve function but only uses the ticks, not the lines
}
\examples{
library(ggsurvival)
library(ggplot2)

survtest <- data.frame(
  time = sample(seq(30),50,replace = T),
  status = sample(1:2, 50, replace = T),
  condition = sample(c("wt","ko"), 50, replace = T)
)

ggplot() +
  geom_survLines(survtest, aes(time, status, color=condition))
  geom_survTicks(survtest, aes(time, status, color=condition))

}
