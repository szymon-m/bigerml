library("recommenderlab")

#' Return predictions for user no 100
#' @get /recommends

function() {
	data("MovieLense")
	### use only users with more than 100 ratings
	
	MovieLense100 <- MovieLense[rowCounts(MovieLense)>100,]
	### MovieLense100 

	train <- MovieLense[1:50]
	rec <- Recommender(train, method = "UBCF")
	### rec

	pre <- predict(rec, MovieLense100[100])
	ready <- as(pre, "list")
	ready[[1]][1]
}
