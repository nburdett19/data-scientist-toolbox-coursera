complete <- function(directory, id = 1:332) {
        all_files 
        specdata <- data.frame()
        for (i in id) {
                monitor_id <- read.csv(all_files[i])
                nobs <- sum(complete.cases(monitor_id))
                tmp <- data.frame(i,nobs)
                specdata <- rbind(specdata,tmp)
                
        }
        colnames(specdata)<- c("id","nobs")
        specdata
}
