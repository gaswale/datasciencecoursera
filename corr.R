## function to find the correlation between nitrate and sulfate
## measurements 

corr <- function(directory, threshold = 0) {
    
    files_list <- list.files(directory, full.names = TRUE)
    
    dat <- numeric()
    
    for (i in 1:332) {
        
        x <- read.csv(files_list[i])
        count <- sum(complete.cases(x))
        
        if (count > threshold) {
            
            good <- na.omit(x)
            
            y <- cor(good$nitrate, good$sulfate)
            
            dat <- c(dat, y)
        } 
        
    }
    
    return(dat)
}