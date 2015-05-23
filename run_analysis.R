##
# Check if the file exists and download it if necessary.
##

fileName = "UCI_HAR_Dataset.zip";
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
message("Looking for \'", fileName, "\'.");
if (file.exists(fileName) == FALSE) {
    message(" ... Downloading");
    download.file(fileUrl, fileName, method="curl");
} else {
    message(" ... File found.");
}

##
# Decompress the data.
##
dataDir = "UCI HAR Dataset";
message("Looking for extracted data in '", dataDir, "'.");
if (dir.exists(dataDir) == FALSE) {
    message(" ... extracting data in ", dataDir);
    unzip(fileName, overwrite=TRUE);
} else {
    message(" ... Data found.");
}

##
# Extract the column names to use for the data.
#
featureNamesFile = paste(dataDir, "features.txt", sep="/");
featureNamesData = read.table(featureNamesFile);
featureNames = featureNamesData[[2]];
featureNamesMask = grepl("-mean\\(\\)|-std\\(\\)", featureNames);

##
# Read a table of data from {fileName} where each column is labled
# by {featureNames}, and keep only the columns with true values in
# the logical vector {featureMask}.
##
readFeatureData <- function(fileName) {
    featureData = read.table(fileName, col.names=featureNames);
    featureData = featureData[, featureNamesMask];
}


activityLabelsFile = paste(dataDir, "activity_labels.txt", sep="/");
activityLabels = read.table(activityLabelsFile)[[2]]

##
# Read a table of activity data from {fileName} and convert
# the column to a descriptive name.
##
readActivityData <- function(fileName) {
    activityCodes = read.table(fileName);
    activityNames = lapply(activityCodes, function (x) { activityLabels[x]; });
    activityData = cbind(activityCodes, activityNames);
    colnames(activityData) = c("activity_code", "activity_name");
    activityData
}

##
# Read a table of subject ID data from {filename}.
##
readSubjectIdData <- function(fileName) {
    read.table(fileName, col.names=c("subject_id"));
}


# Load the feature data.
message("Loading feature data...");
trainFeatureData = readFeatureData(paste(dataDir, "train", "X_train.txt", sep="/"));
testFeatureData = readFeatureData(paste(dataDir, "test", "X_test.txt", sep="/"));
# Merge test and train data together.
featureData = rbind(trainFeatureData, testFeatureData);

# Load the activity data.
message("Loading activity data...");
trainActivityData = readActivityData(paste(dataDir, "train", "y_train.txt", sep="/"));
testActivityData = readActivityData(paste(dataDir, "test", "y_test.txt", sep="/"));
# Merge test and train data together.
activityData = rbind(trainActivityData, testActivityData);

# Load the subjectId data.
message("Loading subject id data...");
trainSubjectIdData = readSubjectIdData(paste(dataDir, "train", "subject_train.txt", sep="/"));
testSubjectIdData = readSubjectIdData(paste(dataDir, "test", "subject_test.txt", sep="/"));
# Merge test and train data together.
subjectIdData = rbind(trainSubjectIdData, testSubjectIdData);
