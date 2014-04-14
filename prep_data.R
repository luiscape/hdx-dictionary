## Use this file to pull data from the Google Doc that we are managing. 

countrycode_data = read.csv('~/repo/pycountrycode/countrycode/data/countrycode_data.csv', stringsAsFactors=FALSE, na.strings='')
colnames(countrycode_data)[1] = 'country.name'
countrycode_data$iso2c[countrycode_data$country.name=='Namibia'] = 'NA'
save(hdx.dictionary, file='countrycode_data.rda')  # added hdx.dictionary, but need to fix the rest of the function.
