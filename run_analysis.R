# Getting and Cleaning Data - Project 1

#------------------------------------------------------------------
# 1 - Merges the training and the test sets to create one data set.
#-------------------------------------------------------------------

# Load Data Sets
train <- read.table("./UCI HAR Dataset/train/X_train.txt")

test <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Combine into one set
combineSet <- rbind(train, test)

#---------------------------------------------------------------------
# 2 -Extracts only the measurements on the mean and standard deviation
#    for each measurement.
#---------------------------------------------------------------------

# Get Feature Names
feature <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
colnames(feature) <- c("num", "fname")

# Get measurements only on Mean and Standard Deviation
feature.Sub <- feature[((grepl("mean()",feature$fname) | 
                           grepl("std()", feature$fname)) & 
                          !grepl("meanFreq()", feature$fname)),]

# Extract Mean and Standard Deviation measurements from the data set
combineSet.Sub <- combineSet[,feature.Sub$num]
# Set the column names
colnames(combineSet.Sub) <- feature.Sub$fname

#Add subject ids
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
combineSet.Sub$subjectID <- rbind(trainSubject, testSubject)$V1

#--------------------------------------------------------------------------
# 3 - Uses descriptive activity names to name the activities in the data set
#--------------------------------------------------------------------------

# Add activity id to the data set
trainLabel = read.table("./UCI HAR Dataset/train/y_train.txt")
testLabel = read.table("./UCI HAR Dataset/test/y_test.txt")
combineSet.Sub$activityID <- rbind(trainLabel, testLabel)$V1

# Merge data set with activity labels to add descriptive names
activityNames <- read.table("./UCI HAR Dataset/activity_labels.txt")
combineSet.Sub <- merge(combineSet.Sub, activityNames, by.x = "activityID", 
                        by.y = "V1", all = TRUE)

#Rename added field
names(combineSet.Sub)[names(combineSet.Sub) == "V2"] <-"activityLabel"

#--------------------------------------------------------------------------
# 4 - Appropriately labels the data set with descriptive variable names.
#--------------------------------------------------------------------------

colnames(combineSet.Sub) <- sapply(colnames(combineSet.Sub), function(x) {
                                     #x <- tolower(x)
                                     #first character is t, it is time
                                     if(substr(x, 1, 1) == 't')  {
                                        x <- sub("t", "time", x)
                                     }
                                     #first charater is f, it is frequency
                                     else if (substr(x, 1, 1) == 'f') {
                                       x <- sub("f", "frequency", x)
                                     }
                                     x <- gsub("-", "", x)
                                     x <- gsub("\\(", "",x)
                                     x <- gsub("\\)X", "_X",x)
                                     x <- gsub("\\)Y", "_Y",x)
                                     x <- gsub("\\)Z", "_Z",x)
                                     x <- gsub("\\)", "",x)
                                  })

#--------------------------------------------------------------------------
# 5 - Creates a second, independent tidy data set with the average of each 
#     variable for each activity and each subject.
#--------------------------------------------------------------------------

tidySet <- combineSet.Sub
tidySet$activityLabel <- as.character(tidySet$activityLabel)
# Group by activity and subject
tidySet$group <- as.factor(paste(tidySet$subject, tidySet$activityLabel))

# Create final tidy data set 
tidySet.Final = data.frame(1:180) # 180 groups - 30 subjects and 6 activites
for (i in 2:67) {
  tidySet.Final[, colnames(tidySet)[i]] <- tapply(tidySet[,i], tidySet$group, mean)
}

#Remove Extra Column
tidySet.Final[,1] <- NULL

#Add Group Info
tidySet.Final$group <- unique(tidySet$group)

#Save final tidy set into text file
write.table(tidySet.Final, file="tidyData.txt", sep="\t", row.names = FALSE)
