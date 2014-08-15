pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    files_list <- list.files(directory, full.names=TRUE)
        
    x <- data.frame()
    
    for (i in id) {
        x <- rbind(x, read.csv(files_list[i]))
    }
    
    ##x_subset <- subset(x, select = pollutant)
    x_subset <- x[[pollutant]]
            
    mean(x_subset, na.rm=TRUE)
    
}