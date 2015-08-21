# downlad_zipfile.R
#
# Script used to download, unpack and save the data used in the rest of the proyect
#
# Aditionally a file ./data/download_date.txt with the date of download is added

if(!file.exists("./data")){
    dir.create("./data")}

zipfileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile.name = "./data/dataset.zip"
download.file(zipfileUrl, destfile= zipfile.name, method= "curl")
unzip(zipfile.name)
write(date(), file = './data/download_date.txt')
