\name{hdxdictionary}
\alias{hdxdictionary}
\title{Convert country codes}
\usage{
hdxdictionary(sourcevar, origin, destination, warn = FALSE)
}
\arguments{
  \item{sourcevar}{Vector which contains the codes or
  country names to be converted}

  \item{origin}{Coding scheme of origin (name enclosed in
  quotes "")}

  \item{destination}{Coding scheme of destination (name
  enclosed in quotes "")}

  \item{warn}{Prints unique elements from sourcevar for
  which no match was found}
}
\description{
Converts long country names into one of many different
coding schemes. Translates from one scheme to another.
Converts country name or coding scheme to the official
short English country name. Creates a new variable with the
name of the continent or region to which each country
belongs.
}
\note{
Supports the following coding schemes: Correlates of War
character, CoW-numeric, ISO3-character, ISO3-numeric,
ISO2-character, IMF numeric, FIPS 10-4, FAO numeric, United
Nations numeric (?), World Bank character, official English
short country names (ISO), continent, region.

Note: In the HDX-Dictionary it also supports: HDX Focus
Country (T/F), OCHA Office Code, OCHA Name in English,
HumanitarianResponse link, country name in English, Spanish
and French.

The following strings can be used as arguments for
\code{origin} or \code{destination}: "cowc", "cown",
"iso3c", "iso3n", "iso2c", "imf", "fips104", "fao", "un",
"wb", "country.name", "hdx-focus".  The following strings
can be used as arguments for \code{destination}
\emph{only}: "continent", "region", "ocha-office-code",
"ocha-office-name".
}
\examples{
codes.of.origin <- hdx.dictionary$cowc # Vector of values to be converted
hdxdictionary(codes.of.origin, "cowc", "iso3c")
}
\keyword{hdxdictionary}

