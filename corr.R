corr <- function(directory, threshhold = 0) {
        all_files       
        specdata <- vector(mode = "numeric", length = 0)
        
        for (i in 1:length(all_files)) {
                monitor_id <- read.csv(all_files[i])
                correlationsum <- sum((!is.na(monitor_id$sulfate)) & (!is.na(monitor_id$nitrate)))
                if (correlationsum > threshhold) {
                        tmp <- monitor_id[which(!is.na(monitor_id$sulfate)), ]
                        submonitor_id <- tmp[which(!is.na(tmp$nitrate)), ]
                        specdata <- c(specdata,cor(submonitor_id$sulfate, submonitor_id$nitrate))
                                        }
                                                }

        specdata
}