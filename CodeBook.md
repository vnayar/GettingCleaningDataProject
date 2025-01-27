
# CodeBook: Getting and Cleaning Data Course Project

## Variables in 'fitnessData.txt'
1. `subject_id`
  - Meaning: A unique identfier for the observed subject performing an activity.
  - Unit: None
  - Space: Positive integer
2. `tBodyAcc-mean()-X`
  - Meaning: Time domain average highpass filtered accelleration along the X axis of the subject's
    body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
3. `tBodyAcc-mean()-Y`
  - Meaning: Time domain average highpass filtered accelleration along the Y axis of the subject's
    body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
4. `tBodyAcc-mean()-Z`
  - Meaning: Time domain average highpass filtered accelleration along the Z axis of the subject's
    body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
5. `tBodyAcc-std()-X`
  - Meaning: Time domain standard deviation of highpass filtered accelleration along the X axis of
    the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
6. `tBodyAcc-std()-Y`
  - Meaning: Time domain standard deviation of highpass filtered accelleration along the Y axis of
    the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
7. `tBodyAcc-std()-Z`
  - Meaning: Time domain standard deviation of highpass filtered accelleration along the Z axis of
    the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
8. `tGravityAcc-mean()-X`
  - Meaning: Time domain average of lowpass filtered accelleration along the X axis of the subject's
    body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
9. `tGravityAcc-mean()-Y`
  - Meaning: Time domain average of lowpass filtered accelleration along the Y axis of the subject's
    body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
10. `tGravityAcc-mean()-Z`
  - Meaning: Time domain average of lowpass filtered accelleration along the Z axis of the subject's
    body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
11. `tGravityAcc-std()-X`
  - Meaning: Time domain standard deviation of lowpass filtered accelleration along the X axis of
    the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
12. `tGravityAcc-std()-Y`
  - Meaning: Time domain standard deviation of lowpass filtered accelleration along the Y axis of
    the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
13. `tGravityAcc-std()-Z`
  - Meaning: Time domain standard deviation of lowpass filtered accelleration along the Z axis of
    the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
14. `tBodyAccJerk-mean()-X`
  - Meaning: Time domain average of the 'jerk', or first derivative, of the highpass filtered
    accelleration along the X axis of the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g' per second.
  - Space: Real numbers -1.0 and +1.0.
15. `tBodyAccJerk-mean()-Y`
  - Meaning: Time domain average of the 'jerk', or first derivative, of the highpass filtered
    accelleration along the Y axis of the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g' per second.
  - Space: Real numbers -1.0 and +1.0.
16. `tBodyAccJerk-mean()-Z`
  - Meaning: Time domain average of the 'jerk', or first derivative, of the highpass filtered
    accelleration along the Z axis of the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g' per second.
  - Space: Real numbers -1.0 and +1.0.
17. `tBodyAccJerk-std()-X`
  - Meaning: Time domain standard deviation of the 'jerk', or first derivative, of the highpass
    filtered accelleration along the X axis of the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g' per second.
  - Space: Real numbers -1.0 and +1.0.
18. `tBodyAccJerk-std()-Y`
  - Meaning: Time domain standard deviation of the 'jerk', or first derivative, of the highpass
    filtered accelleration along the Y axis of the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g' per second.
  - Space: Real numbers -1.0 and +1.0.
19. `tBodyAccJerk-std()-Z`
  - Meaning: Time domain standard deviation of the 'jerk', or first derivative, of the highpass
    filtered accelleration along the Z axis of the subject's body during an activity.
  - Unit: (normalized) standard gravity unit 'g' per second.
  - Space: Real numbers -1.0 and +1.0.
20. `tBodyGyro-mean()-X`
  - Meaning: Time domain average of the angular velocity of the body around the X axis during an
    activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
21. `tBodyGyro-mean()-Y`
  - Meaning: Time domain average of the angular velocity of the body around the Y axis during an
    activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
22. `tBodyGyro-mean()-Z`
  - Meaning: Time domain average of the angular velocity of the body around the Z axis during an
    activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
23. `tBodyGyro-std()-X`
  - Meaning: Time domain standard deviation of the angular velocity of the body around the X axis
    during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
24. `tBodyGyro-std()-Y`
  - Meaning: Time domain standard deviation of the angular velocity of the body around the X axis
    during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
25. `tBodyGyro-std()-Z`
  - Meaning: Time domain standard deviation of the angular velocity of the body around the X axis
    during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
26. `tBodyGyroJerk-mean()-X`
  - Meaning: Time domain average of the angular acceleration of the body around the X axis during an
    activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
27. `tBodyGyroJerk-mean()-Y`
  - Meaning: Time domain average of the angular acceleration of the body around the Y axis during an
    activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
28. `tBodyGyroJerk-mean()-Z`
  - Meaning: Time domain average of the angular acceleration of the body around the Z axis during an
    activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
29. `tBodyGyroJerk-std()-X`
  - Meaning: Time domain standard deviation of the angular acceleration of the body around the X
    axis during an activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
30. `tBodyGyroJerk-std()-Y`
  - Meaning: Time domain standard deviation of the angular acceleration of the body around the Y
    axis during an activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
31. `tBodyGyroJerk-std()-Z`
  - Meaning: Time domain standard deviation of the angular acceleration of the body around the Z
    axis during an activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
32. `tBodyAccMag-mean()`
  - Meaning: Time domain average of the magnitude of highpass filtered acceleration (independent of
    direction) during an activity.
  - Unit: (normalized) standard gravity unit 'g'.
  - Space: Real numbers -1.0 and +1.0.
33. `tBodyAccMag-std()`
  - Meaning: Time domain standard deviation of the magnitude of highpass filtered acceleration
    (independent of direction) during an activity.
  - Unit: (normalized) standard gravity unit 'g'.
  - Space: Real numbers -1.0 and +1.0.
34. `tGravityAccMag-mean()`
  - Meaning: Time domain average of the magnitude of lowpass filtered acceleration (independent of
    direction) during an activity.
  - Unit: (normalized) standard gravity unit 'g'.
  - Space: Real numbers -1.0 and +1.0.
35. `tGravityAccMag-std()`
  - Meaning: Time domain standard deviation of the magnitude of lowpass filtered acceleration
    (independent of direction) during an activity.
  - Unit: (normalized) standard gravity unit 'g'.
  - Space: Real numbers -1.0 and +1.0.
36. `tBodyAccJerkMag-mean()`
  - Meaning: Time domain average of the derivative, or 'jerk', of the magnitude of highpass filtered
    acceleration (independent of direction) during an activity.
  - Unit: (normalized) standard gravity unit 'g' per second.
  - Space: Real numbers -1.0 and +1.0.
37. `tBodyAccJerkMag-std()`
  - Meaning: Time domain standard deviation of the derivative, or 'jerk', of the magnitude of
    highpass filtered acceleration (independent of direction) during an activity.
  - Unit: (normalized) standard gravity unit 'g' per second.
  - Space: Real numbers -1.0 and +1.0.
38. `tBodyGyroMag-mean()`
  - Meaning: Time domain average magnitude of the angular velocity of the body during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
39. `tBodyGyroMag-std()`
  - Meaning: Time domain standard deviation of the magnitude of highpass filtered the angular
    velocity during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
40. `tBodyGyroJerkMag-mean()`
  - Meaning: Time domain average magnitude of the highpass filtered angular acceleration during an
    activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
41. `tBodyGyroJerkMag-std()`
  - Meaning: Time domain standard deviation of the magnitude of the highpass filtered angular
    acceleration during an activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
42. `fBodyAcc-mean()-X`
  - Meaning: Frequency domain average of the highpass filtered acceleration along the X axis during
    an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
43. `fBodyAcc-mean()-Y`
  - Meaning: Frequency domain average of the highpass filtered acceleration along the Y axis during
    an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
44. `fBodyAcc-mean()-Z`
  - Meaning: Frequency domain average of the highpass filtered acceleration along the Z axis during
    an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
45. `fBodyAcc-std()-X`
  - Meaning: Frequency domain standard deviation of the highpass filtered acceleration along the X
    axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
46. `fBodyAcc-std()-Y`
  - Meaning: Frequency domain standard deviation of the highpass filtered acceleration along the Y
    axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
47. `fBodyAcc-std()-Z`
  - Meaning: Frequency domain standard deviation of the highpass filtered acceleration along the Z
    axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
48. `fBodyAccJerk-mean()-X`
  - Meaning: Frequency domain average of the highpass filtered derivative of acceleration along the
    X axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
49. `fBodyAccJerk-mean()-Y`
  - Meaning: Frequency domain average of the highpass filtered derivative of acceleration along the
    Y axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
50. `fBodyAccJerk-mean()-Z`
  - Meaning: Frequency domain average of the highpass filtered derivative of acceleration along the
    Z axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
51. `fBodyAccJerk-std()-X`
  - Meaning: Frequency domain standard deviation of the highpass filtered derivative of acceleration
    along the X axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
52. `fBodyAccJerk-std()-Y`
  - Meaning: Frequency domain standard deviation of the highpass filtered derivative of acceleration
    along the X axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
53. `fBodyAccJerk-std()-Z`
  - Meaning: Frequency domain standard deviation of the highpass filtered derivative of acceleration
    along the X axis during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
54. `fBodyGyro-mean()-X`
  - Meaning: Frequency domain average of the angular velocity of the body around the Z axis during
    an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
55. `fBodyGyro-mean()-Y`
  - Meaning: Frequency domain average of the angular velocity of the body around the Z axis during
    an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
56. `fBodyGyro-mean()-Z`
  - Meaning: Frequency domain average of the angular velocity of the body around the Z axis during
    an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
57. `fBodyGyro-std()-X`
  - Meaning: Frequency domain standard deviation of the angular velocity of the body around the X
    axis during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
58. `fBodyGyro-std()-Y`
  - Meaning: Frequency domain standard deviation of the angular velocity of the body around the Y
    axis during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
59. `fBodyGyro-std()-Z`
  - Meaning: Frequency domain standard deviation of the angular velocity of the body around the Z
    axis during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
60. `fBodyAccMag-mean()`
  - Meaning: Frequency domain average of the highpass filtered acceleration magnitude during an
    activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
61. `fBodyAccMag-std()`
  - Meaning: Frequency domain standard deviation of the highpass filtered acceleration magnitude
    during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
62. `fBodyBodyAccJerkMag-mean()`
  - Meaning: Frequency domain average of the highpass filtered derivative of acceleration magnitude
    during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
63. `fBodyBodyAccJerkMag-std()`
  - Meaning: Frequency domain standard deviation of the highpass filtered derivative of acceleration
    magnitude during an activity.
  - Unit: (normalized) standard gravity unit 'g'
  - Space: Real numbers -1.0 and +1.0.
64. `fBodyBodyGyroMag-mean()`
  - Meaning: Frequency domain average of the highpass filtered angular velocity magnitude during an
    activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
65. `fBodyBodyGyroMag-std()`
  - Meaning: Frequency domain standard deviation of the highpass filtered angular velocity magnitude
    during an activity.
  - Unit: (normalized) Radians per second.
  - Space: Real numbers -1.0 and +1.0.
66. `fBodyBodyGyroJerkMag-mean()`
  - Meaning: Frequency domain average of the highpass filtered angular acceleration magnitude during an
    activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
67. `fBodyBodyGyroJerkMag-std()`
  - Meaning: Frequency domain average of the highpass filtered angular acceleration magnitude during an
    activity.
  - Unit: (normalized) Radians per second per second.
  - Space: Real numbers -1.0 and +1.0.
68. `activity`
  - Meaning: An identifier number for the kind of activity being performed.
  - Unit: An integer that encodes an activity type
    - 1: WALKING
    - 2: WALKING_UPSTAIRS
    - 3: WALKING_DOWNSTAIRS
    - 4: SITTING
    - 5: STANDING
    - 6: LAYING
  - Space: An integer from 1 to 6.
69. `activity_label`
  - Meaning: A string representation of the activity encoded in `activity`.
  - Unit: String
  - Space: One of `"WALKING"`, `"WALKING_UPSTAIRS"`, `"WALKING_DOWNSTAIRS"`, `"SITTING"`,
    `"STANDING"`, or `"LAYING"`.

## Variables in 'fitnessDataAverageByActivityAndSubject.txt'

1. `subject_id`: Same as in 'fitnessData.txt'.
2. `activity_label`: Same as in 'fitnessData.txt'.
3. Columns 3-68 are the same as 2-67 in 'fitnessData.txt', but averaged for the `subject_id` and
`activity`.  The column name is the same as `fitnessData.txt` but is prepended with the string
`average_`.

