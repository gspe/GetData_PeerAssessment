require(dplyr)
# Create data directory
if (!file.exists("data")) {
  dir.create("data")
}

# Get the file from internet
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileDestination <- "./data/UCI_HAR_Dataset.zip"
download.file(fileUrl, destfile = fileDestination, method = "curl")
# Unzip file
unzip(fileDestination, exdir = "./data")

dateDownloaded <- date()
dateDownloaded

# Load train and test data into R
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Merge Activity with data
x_train <- cbind(subject_train, y_train, x_train)
x_test <- cbind(subject_test, y_test, x_test)

# Merge train and test data
HAR.data <- rbind(x_train, x_test)

# Load the List of all features
features <- read.table("data/UCI HAR Dataset/features.txt", as.is = TRUE)

# Add subject and activity feature
features <- rbind(c(0, "Subject"), c(0, "Activity"), features)

# Clean feature name
features[,2] <- gsub("-", "_", features[,2])
features[,2] <- gsub("\\(\\)", "", features[,2])

# Rename the variable in HAR.data data set
names(HAR.data) <- make.names(names=features[,2], unique=TRUE, allow_ = TRUE)

# Read activity labels
#activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", as.is = TRUE)

# Encode Activity feature as factor
HAR.data$Activity <- as.factor(HAR.data$Activity)
levels(HAR.data$Activity) <- list("WALKING"="1", "WALKING_UPSTAIRS"="2", "WALKING_DOWNSTAIRS"="3", "SITTING"="4", "STANDING"="5", "LAYING"="6")

# Extracts only the measurements on the mean and standard deviation for each measurement. 
HAR.data.2 <- select(HAR.data, Subject, Activity, contains("mean"), contains("std"))

# Summarise data by Subject and Activity
HAR.data.3 <- summarise_each(group_by(HAR.data.2, Subject, Activity), funs(mean))

# Write data set to file
result_analisys <- "result_analisys.txt"
write.table(HAR.data.3, file = result_analisys, row.names = FALSE)

