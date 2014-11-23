# Data Dictionary - Course Project - Getting and Cleaning Data

The output of the code run_analysis.R is the file CourseProject_Tidy.txt. The contents of this file are as follows: 

-*subject*
    Indicates the person to whom the row of data pertains.
    '''
    Values are the numbers 1 through 30.
    Actual names are not recorded.
    '''

-*activity* 
    Indicates the activity to which the data pertains for that person
    
    '''
    Values are: 
        1. WALKING
        2. WALKING_UPSTAIRS
        3. WALKING_DOWNSTAIRS
        4. SITTING
        5. STANDING
        6. LAYING
    '''

-*signal*
    The 3 axial signal being measured from the samsung accelerometer and gyroscope.
    
    '''
    Values are: 
        1. tBodyAcc.mean...X
        2. tBodyAcc.mean...Y
        3. tBodyAcc.mean...Z
        4. tGravityAcc.mean...X
        5. tGravityAcc.mean...Y
        6. tGravityAcc.mean...Z
        7. tBodyAccJerk.mean...X
        8. tBodyAccJerk.mean...Y
        9. tBodyAccJerk.mean...Z
        10. tBodyGyro.mean...X
        11. tBodyGyro.mean...Y
        12. tBodyGyro.mean...Z
        13. tBodyGyroJerk.mean...X
        14. tBodyGyroJerk.mean...Y
        15. tBodyGyroJerk.mean...Z
        16. tBodyAccMag.mean..
        17. tGravityAccMag.mean..
        18. tBodyAccJerkMag.mean..
        19. tBodyGyroMag.mean..
        20. tBodyGyroJerkMag.mean..
        21. fBodyAcc.mean...X
        22. fBodyAcc.mean...Y
        23. fBodyAcc.mean...Z
        24. fBodyAccJerk.mean...X
        25. fBodyAccJerk.mean...Y
        26. fBodyAccJerk.mean...Z
        27. fBodyGyro.mean...X
        28. fBodyGyro.mean...Y
        29. fBodyGyro.mean...Z
        30. fBodyAccMag.mean..
        31. fBodyBodyAccJerkMag.mean..
        32. fBodyBodyGyroMag.mean..
        33. fBodyBodyGyroJerkMag.mean..
        34. angle.tBodyAccMean.gravity.
        35. angle.tBodyAccJerkMean..gravityMean.
        36. angle.tBodyGyroMean.gravityMean.
        37. angle.tBodyGyroJerkMean.gravityMean.
        38. angle.X.gravityMean.
        39. angle.Y.gravityMean.
        40. angle.Z.gravityMean.
        41. tBodyAcc.std...X
        42. tBodyAcc.std...Y
        43. tBodyAcc.std...Z
        44. tGravityAcc.std...X
        45. tGravityAcc.std...Y
        46. tGravityAcc.std...Z
        47. tBodyAccJerk.std...X
        48. tBodyAccJerk.std...Y
        49. tBodyAccJerk.std...Z
        50. tBodyGyro.std...X
        51. tBodyGyro.std...Y
        52. tBodyGyro.std...Z
        53. tBodyGyroJerk.std...X
        54. tBodyGyroJerk.std...Y
        55. tBodyGyroJerk.std...Z
        56. tBodyAccMag.std..
        57. tGravityAccMag.std..
        58. tBodyAccJerkMag.std..
        59. tBodyGyroMag.std..
        60. tBodyGyroJerkMag.std..
        61. fBodyAcc.std...X
        62. fBodyAcc.std...Y
        63. fBodyAcc.std...Z
        64. fBodyAccJerk.std...X
        65. fBodyAccJerk.std...Y
        66. fBodyAccJerk.std...Z
        67. fBodyGyro.std...X
        68. fBodyGyro.std...Y
        69. fBodyGyro.std...Z
        70. fBodyAccMag.std..
        71. fBodyBodyAccJerkMag.std..
        72. fBodyBodyGyroMag.std..
        73. fBodyBodyGyroJerkMag.std..
    '''
    
-*average*
    The average value of the signal for that person and activity.
    
    '''
    Values are: 
    -1..+1 floating 7 decimal numeric value
    '''

