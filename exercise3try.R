library(lubridate)
library(here)
setwd('/Users/maarten/Library/CloudStorage/OneDrive-LondonSchoolofHygieneandTropicalMedicine/Github/Novel_data_streams_SISMID24')


df <- read.csv('./data/covid_traces_WA.csv')
df$date <- mdy(df$date)

signals = c('new_cases', 'upToDate', 'cdc_ili', 'Twitter_RelatedTweets',
            'google_fever', 'Kinsa_AnomalousFeverAbsolute')
par(mfrow=c(3, 2))
plot(df$date, df[, signals[1]], type='l', ylab=signals[1])
plot(df$date, df[, signals[2]], type='l', ylab=signals[2])
plot(df$date, df[, signals[3]], type='l', ylab=signals[3])
plot(df$date, df[, signals[4]], type='l', ylab=signals[4])
plot(df$date, df[, signals[5]], type='l', ylab=signals[5])
plot(df$date, df[, signals[6]], type='l', ylab=signals[6])

s
s
s
s
s