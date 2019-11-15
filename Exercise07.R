#Kyle Sommerfield and Farai Musariri
#Return odd rows of a given dataframe
#x= dataframe we are working on
odd_rows <- function(x){
  totalrows <- nrow(x)
  odd <- seq(1,totalrows,2)
  answer1 <- x[odd,]
  return(answer1)
}

#Read iris.csv to a dataframe called iris
iris <- read.csv(file="iris.csv",header=TRUE,stringsAsFactors=FALSE)

#Function to return number of observations for a given species
#x= dataframe we are working on, in this case iris
#type= desired species in quotes, e.g. species_count(x,"setosa")
species_count <- function(x,type){
  species_file <- x[x$Species==type,]
  answer2a <- nrow(species_file)
  return(answer2a)
}

#Function to create a dataframe for flowers with a Sepal.Width larger than a specified value
#x= dataframe we are working on, in this case iris
#n= specified Sepal.Width, e.g. sepal_width(iris,3.5)
sepal_width <- function(x,n){
  answer2b <- (x[x$Sepal.Width>n,])
  return(answer2b)
}

#Write a comma-delimited file for a given species
#x= dataframe we are working on, in this case iris
#taxa= desired species in quotes, e.g. "setosa"
species_csv <- function(x,taxa){
  subset <- x[x$Species==taxa,]
  write.table(subset, file=paste(taxa, ".csv" , sep=""), row.names=FALSE,sep=",")
}
