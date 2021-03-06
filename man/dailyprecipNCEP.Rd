% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datatools.R
\name{dailyprecipNCEP}
\alias{dailyprecipNCEP}
\title{Obtain daily precipitation from NCEP}
\usage{
dailyprecipNCEP(lat, long, tme, reanalysis2 = TRUE)
}
\arguments{
\item{lat}{the latitude of the location for which data are required}

\item{long}{the longitude of the location for which data are required}

\item{tme}{a POSIXlt object covering the duration for which data are required.
Intervals should be daily.
Hourly data are returned irrespective of the time interval of \code{tme}.}

\item{reanalysis2}{Logical. Should data be obtained from the Reanalysis II dataset (default) or
from Reanalysis I (data prior to 1979).}
}
\value{
a vector of daily precipitations (mm / day) for the period covered by tme
}
\description{
Obtain daily precipitation from NCEP
}
\examples{
tme <- as.POSIXlt(c(1:15) * 24 * 3600, origin = "2015-01-15", tz = 'UTC')
dailyprecipNCEP(50, -5, tme)
}
