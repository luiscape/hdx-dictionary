#' Country code translation data frame
#' 
#' A data frame with 144 observations on the following 23 variables.
#' Used internally by the \code{hdxdictionary()} function.
#' 
#' \itemize{
#'   \item country.name: Long country name 
#'   \item cowc: Correlates of War character
#'   \item cown: Correlates of War numeric
#'   \item fao: Food and Agriculture Organization of the United Nations numerical code
#'   \item fips104: FIPS 10-4 (Federal Information Processing Standard) 
#'   \item imf: International Monetary Fund 
#'   \item iso2c: ISO-2 character
#'   \item iso3c: ISO-3 character
#'   \item iso2n: ISO-2 numeric 
#'   \item iso3n: ISO-3 numeric 
#'   \item un: United Nations numerical code 
#'   \item wb: World Bank (very similar but not identical to iso3c) 
#'   \item regex: Regular expression used to convert long names to code 
#'   \item region: Regions as defined in the World Bank Development Indicators 
#'   \item continent: Continent as defined in the World Bank Development Indicators 
#'   \item Name..es.: Name of the country in Spanish. 
#'   \item country.name.package.temp: original name in the `countrycode` package.
#'   \item Name..fr.: Name of the country in French. 
#'   \item Preferred.languages: 'official' language used in the country. 
#'   \item HDX.Focus.Country: if 'TRUE' = the country is a country-focus in HDx.
#'   \item Office.code: the code of the office in which this country falls into
#'   \item Office.name..en.: The name of the office in English.
#'   \item HumanitarianResponse.link: link to the humanitarian response website.
#'   \item Field.Operation: If the country has an OCHA field operation.
#'   \item Field.Operation.Status: Status of the country OCHA field operation.
#'  
#' }
#' 
#' @note To produce consistent conversion, some entries had to be removed from the 
#'     conversion data frame. For example, the Correlates of War include 4 different 
#'     codes to represent Western Germany. "countrycode" uses only one of them (CoW 
#'     code 260 for all years). Similar choices were made in the cases of Korea, 
#'     Yemen, Congo and Vietnam. Also, Namibia's iso2c code ("NA") can be understood 
#'     as a missing observation (NA) by R.
#'
#'     Capitalized country names refer to the official short English names, as defined 
#'     by the ISO organization. ISO does not publish official short English names for 
#'     countries whose name is not capitalized in the the country.name vector. Continent 
#'     and region information was taken from the UN website. 
#' 
#'     This is a (possibly incomplete) list of countries and codes that were dropped:
#' 
#'     KOREA, REPUBLIC OF: cown 731 730, cowc PRK KOR
#'     YEMEN: cown 680 678, cowc YAR YPR
#'     GERMANY: cown 267 260 245, cowc BAV GFR BAD
#'     CONGO: cown 490, cowc 484
#'     VIET NAM: cown 816, cowc DRV
#' @docType data
#' @keywords datasets
#' @name hdx.dictionary
#' @usage hdx.dictionary
#' @format A data frame with 144 rows and 23 columns
NULL

