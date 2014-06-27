## Working file ## 

library(roxygen2)

hdx.master.dic <- read.csv('hdx-master-dictionary.csv')
colnames(hdx.master.dic)[1] <- 'iso3c'

fromytoTRUE <- function(df) {
    df$HDX.Focus.Country <- as.character(df$HDX.Focus.Country)
    for(i in 1:nrow(df)) { 
        if (df$HDX.Focus.Country[i] == "y") { df$HDX.Focus.Country[i] <- TRUE }
        else { df$HDX.Focus.Country[i] <- FALSE }
    }
    return(df)
}

# Converting the 'y' and 'n' in TRUE/FALSE.
hdx.master.dic <- fromytoTRUE(hdx.master.dic)

# Loading field operations.

# Merging
hdx.dictionary <- merge(hdx.master.dic, countrycode_data, by = 'iso3c')
colnames(hdx.dictionary)[2] <- 'country.name.package.temp'
colnames(hdx.dictionary)[7] <- 'hdx-focus'
colnames(hdx.dictionary)[15] <- 'country.name'

# Saving
save(hdx.dictionary, file='data/countrycode_data.rda') 
