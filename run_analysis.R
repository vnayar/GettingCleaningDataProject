##
# The main body that eventually produces the tidy output data.
##
buildTidyData <- function () {
    fileName = downloadZip();
    dataDir = decompressZip(fileName);
    featureData = readFeatureData(dataDir);
    featureData = labelFeatureData(dataDir, featureData);
    featureData = trimFeatureData(featureData);
    activityData = readActivityData(dataDir);
    activityData = labelActivityData(dataDir, activityData);
    subjectData = readSubjectData(dataDir);
    subjectData = labelSubjectData(subjectData);

    writeTidyData("fitnessData.txt", subjectData, featureData, activityData);
    writeAverageByActivityAndSubject(
        "fitnessDataAverageByActivityAndSubject.txt", subjectData, featureData, activityData);
}

##
# Check if the file exists and download it if necessary.
##
downloadZip <- function () {
    fileName = "UCI_HAR_Dataset.zip";
    fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
    message("Looking for \'", fileName, "\'.");
    if (file.exists(fileName) == FALSE) {
        message(" ... Downloading");
        download.file(fileUrl, fileName, method="curl");
    } else {
          message(" ... File found.");
    }
    fileName
}

##
# Decompress the data.
##
decompressZip <- function (fileName) {
    dataDir = "UCI HAR Dataset";
    message("Looking for extracted data in '", dataDir, "'.");
    if (dir.exists(dataDir) == FALSE) {
        message(" ... extracting data in ", dataDir);
        unzip(fileName, overwrite=TRUE);
    } else {
          message(" ... Data found.");
    }
    dataDir
}

##
# Read a table of data from {fileName} where each column is labled
# by {featureNames}, and keep only the columns with true values in
# the logical vector {featureMask}.
##
readFeatureData <- function(dataDir) {
    message("Reading feature data...");
    trainFeatureData = read.table(paste(dataDir, "train", "X_train.txt", sep="/"));
    testFeatureData = read.table(paste(dataDir, "test", "X_test.txt", sep="/"));
    rbind(trainFeatureData, testFeatureData)
}

labelFeatureData <- function(dataDir, featureData) {
    message("Labeling feature data...");
    featureNamesFile = paste(dataDir, "features.txt", sep="/");
    featureNamesData = read.table(featureNamesFile);
    featureNames = featureNamesData[[2]];
    colnames(featureData) = featureNames;
    featureData
}

trimFeatureData <- function(featureData) {
    message("Trimming feature data columns...");
    featureNamesMask = grepl("-mean\\(\\)|-std\\(\\)", colnames(featureData));
    featureData[, featureNamesMask];
}

##
# Read a table of activity data from {fileName} and convert
# the column to a descriptive name.
##
readActivityData <- function(dataDir) {
    message("Reading activity data...");
    trainActivityData = read.table(paste(dataDir, "train", "y_train.txt", sep="/"));
    testActivityData = read.table(paste(dataDir, "test", "y_test.txt", sep="/"));
    rbind(trainActivityData, testActivityData)
}

labelActivityData <- function(dataDir, activityData) {
    message("Labeling activity data...");
    activityLabelsFile = paste(dataDir, "activity_labels.txt", sep="/");
    activityLabels = read.table(activityLabelsFile)[[2]]

    activityNames = lapply(activityData, function (x) { activityLabels[x]; });
    activityData = cbind(activityData, activityNames);
    colnames(activityData) = c("activity", "activity_label");
    activityData
}


##
# Read a table of subject ID data from {filename}.
##
readSubjectData <- function(dataDir) {
    message("Reading subject data...");
    trainSubjectIdData = read.table(paste(dataDir, "train", "subject_train.txt", sep="/"));
    testSubjectIdData = read.table(paste(dataDir, "test", "subject_test.txt", sep="/"));
    rbind(trainSubjectIdData, testSubjectIdData);
}

labelSubjectData <- function(subjectData) {
    message("Labeling subject data...");
    colnames(subjectData) = c("subject_id");
    subjectData
}

writeTidyData <- function(fileName, subjectData, featureData, activityData) {
    message("Writing tidy data to '", fileName, "'.");
    write.table(cbind(subjectData, featureData, activityData),
                file=fileName, row.name=FALSE);
}

writeAverageByActivityAndSubject <- function(fileName, subjectData, featureData, activityData) {
    message("Writing average data grouped by activity and subject to '", fileName, "'.");
    averageFeatureColNames = lapply(colnames(featureData),
        function(name) { paste("average_", name, sep=""); });
    averageData = aggregate(
        featureData,
        list(subject_id=subjectData[["subject_id"]],
             activity_label=activityData[["activity_label"]]),
        mean);
    colnames(averageData) = c(colnames(averageData)[1:2], averageFeatureColNames);
    write.table(averageData, file=fileName, row.name=FALSE);
}


buildTidyData()
