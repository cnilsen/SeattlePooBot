# Installing packages ------------------------------------------------------------------

if (!require('httr')) install.packages('httr')
if (!require('jsonlite')) install.packages('jsonlite')
if (!require('ggplot2')) install.packages('ggplot2')
if (!require('twitteR')) install.packages("twitteR")
if (!require('rsvg')) install.packages("rsvg")
if (!require('rjson')) install.packages("rjson")
if (!require('base64enc')) install.packages('base64enc')
if (!require('devtools')) install.packages('devtools')
library('rjson')
library('rsvg')
library('twitteR')
library('httr')
library('jsonlite')
library('ggplot2')
library('base64enc')
library('devtools')

# Twitter -----------------------------------------------------------------

# set up twitter api
credentials.file = "credentials.json"


credentials <- fromJSON(file=credentials.file)
ckey <- credentials$twitter$consumer_key
csecret <- credentials$twitter$consumer_secret
atoken <- credentials$twitter$access_token
asecret <- credentials$twitter$access_secret


setup_twitter_oauth(ckey, csecret, atoken, asecret)

# 

# #
# # Create text for tweet --------------------------------------------------------

# send tweet
tweet.text <- 'Hello World'
tweet(tweet.text)
tweet.status="tweeted"
