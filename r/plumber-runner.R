library(plumber)

pr <- plumber::plumb("plumber-recommends.R")

pr$run(host='0.0.0.0', port=8000)
