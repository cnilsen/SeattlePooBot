# Installing packages ------------------------------------------------------------------

if (!require('httr')) install.packages('httr', repos = 'http://cran.us.r-project.org')
if (!require('jsonlite')) install.packages('jsonlite', repos = 'http://cran.us.r-project.org')
if (!require('ggplot2')) install.packages('ggplot2', repos = 'http://cran.us.r-project.org')
if (!require('twitteR')) install.packages("twitteR", repos = 'http://cran.us.r-project.org')
if (!require('rsvg')) install.packages("rsvg", repos = 'http://cran.us.r-project.org')
if (!require('rjson')) install.packages("rjson", repos = 'http://cran.us.r-project.org')
if (!require('base64enc')) install.packages('base64enc', repos = 'http://cran.us.r-project.org')
if (!require('devtools')) install.packages('devtools', repos = 'http://cran.us.r-project.org')
library('rjson')
library('rsvg')
library('twitteR')
library('httr')
library('jsonlite')
library('ggplot2')
library('base64enc')
library('devtools')
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

options(httr_oauth_cache=F)
setup_twitter_oauth(ckey, csecret, atoken, asecret)

# 

# #
# # Create text for tweet --------------------------------------------------------

# send tweet
tweet.text <- 'Hello World'
tweet(tweet.text)
tweet.status="tweeted"
