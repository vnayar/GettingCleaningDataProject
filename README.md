
# Getting and Cleaning Data Course Project

## Files Included

- 'README.md': Overall description of the contents of this data.
- 'CodeBook.md': Description of data fields in the sample data.
- 'fitnessData.txt: Fitness tracking accelerometer data means and standard deviations.
- 'fitnessDataAverageByActivityAndSubject.txt: Fitness tracking accelerometer data
  means and standard deviations, averaged for each grouping of activity type and subject.
- 'run_analysis.R': An R script that downloads the original data, unpacks it, and transforms
  it to produce 'fitnessData.txt and 'fitnessDataAverageByActivityAndSubject.txt.

## Data Analysis

The provided script performs a full conversion from the original `UCI_HAR_Dataset` to the
`fitnessData.txt` and `fitnessDataAverageByActivityAndSubject.txt` datasets.

A full description of the `UCI_HAR_Dataset` can be found at their
[website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

The following steps are performed on on the `UCI_HAR_Dataset` to create the new dataset.

1. Merge the training and test datasets for:
  1. subjects
    - UCI HAR Dataset/test/subject_test.txt
    - UCI HAR Dataset/train/subject_train.txt
  2. features
    - UCI HAR Dataset/test/X_test.txt
    - UCI HAR Dataset/train/X_train.txt
  3. activities
    - UCI HAR Dataset/test/y_test.txt
    - UCI HAR Dataset/train/y_train.txt
2. The columns for the data are labeled as follows:
  1. subjects: One column, named 'subject_id'.
  2. features: Column names taken from `UCI HAR Dataset/features_info.txt`.
  3. activities: The original activity id is in 'activity', and this value is
     mapped to a name taken from `UCI HAR Dataset/activity_labels.txt` and placed
     in the column 'activity_label'.
3. The columns for the featuers that are not an average, i.e. `mean()`, or
   standard deviation, i.e. `std()`, are stripped from the data.
4. The `fitnessData.txt` dataset is created by putting together the columns of
   subjects, features, and activities.
5. The `fitnessDataAverageByActivityAndSubject.txt` is created as follows:
  1. Rows that share the same activity and subject_id are grouped together.
  2. Each group of rows is replaced with a single row that contains the average
     value for every feature in features.
  3. The features columns are renamed by prefixing `average_` to their name.

The full description of the columns and their units can be found in `CodeBook.md`.

## Running the Script

1. First start R.

```
$ R
>
```

2. Source the provided script, which will produce an output like the following:

```
> source("run_analysis.R")
Looking for 'UCI_HAR_Dataset.zip'.
 ... File found.
Looking for extracted data in 'UCI HAR Dataset'.
 ... extracting data in UCI HAR Dataset
Reading feature data...
Labeling feature data...
Trimming feature data columns...
Reading activity data...
Labeling activity data...
Reading subject data...
Labeling subject data...
Writing tidy data to 'fitnessData.txt.
Writing average data grouped by activity and subject to 'fitnessDataAverageByActivityAndSubject.txt.
>
```

3. The data is ready to eat in 'fitnessData.txt and 'fitnessDataAverageByActivityAndSubject.txt.
