pollutantmean <- function(directory,pollutant,id=1:332){
        all_files <-list.files("/Users/NickBurdett/Desktop/R Programming/Week 2 Lecture Videos/specdata",full.names = TRUE)
        specdata <- data.frame()
        for (i in id) {
                specdata <-rbind(specdata, read.csv(all_files[i]))
        } 
        
        mean(specdata[, pollutant], na.rm = TRUE)
}