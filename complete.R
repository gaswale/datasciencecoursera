## function to find the number of complete cases in a pollution data set 

complete <- function(directory, id = 1:332) {
    
    files_list <- list.files(directory, full.names = TRUE)
    
    dat <- data.frame()
    
    for (i in id) {
        x <- read.csv(files_list[i])
        count <- sum(complete.cases(x))
        dat <- rbind(dat, c(i, count))
    }
    
    colnames(dat) <- c("id", "nobs")
        
    return(dat)
}
