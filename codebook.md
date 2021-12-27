# UCI HAR DATASET CODEBOOK

## Data description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (f is the frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Variables coding

- **subject:**  
    An identifier of the subject who carried out the experiment, range from 1 to 30

- **activityLabels:**   
    Activity  
        1 .WALKING  
        2 .WALKING_UPSTAIRS  
        3 .WALKING_DOWNSTAIRS  
        4 .SITTING  
        5 .STANDING  
        6 .LAYING   

- **X, Y, Z**  
    3-axial signals in X, Y, Z directions

- **time**  
    Time domain signals  

- **frequency**  
    Frequency domain signals
    
- **Body**  
    Body motion components
    
- **Gravity**  
    gravitational motion components
    
- **Acc**  
    Accelerometer
    
- **Gyros**  
    Gyroscope
    
- **Jerk**  
    Jerk signals

## Other measurements

1. tBodyAcc-mean()-X
2. tBodyAcc-mean()-Z
3. tBodyAcc-std()-Y
4. tGravityAcc-mean()-X
5. tGravityAcc-mean()-Z
6. tGravityAcc-std()-Y
7. tBodyAccJerk-mean()-X
8. tBodyAccJerk-mean()-Z
9. tBodyAccJerk-std()-Y
10. tBodyGyro-mean()-X
11. tBodyGyro-mean()-Z
12. tBodyGyro-std()-Y
13. tBodyGyroJerk-mean()-X
14. tBodyGyroJerk-mean()-Z
15. tBodyGyroJerk-std()-Y
16. tBodyAccMag-mean()
17. tGravityAccMag-mean()
18. tBodyAccJerkMag-mean()
19. tBodyGyroMag-mean()
20. tBodyGyroJerkMag-mean()
21. fBodyAcc-mean()-X
22. fBodyAcc-mean()-Z
23. fBodyAcc-std()-Y
24. fBodyAccJerk-mean()-X
25. fBodyAccJerk-mean()-Z
26. fBodyAccJerk-std()-Y
27. fBodyGyro-mean()-X
28. fBodyGyro-mean()-Z
29. fBodyGyro-std()-Y
30. fBodyAccMag-mean()
31. fBodyBodyAccJerkMag-mean()
32. fBodyBodyGyroMag-mean()
33. fBodyBodyGyroJerkMag-mean()
34. tBodyAcc-mean()-Y
35. tBodyAcc-std()-X
36. tBodyAcc-std()-Z
37. tGravityAcc-mean()-Y
38. tGravityAcc-std()-X
39. tGravityAcc-std()-Z
40. tBodyAccJerk-mean()-Y
41. tBodyAccJerk-std()-X
42. tBodyAccJerk-std()-Z
43. tBodyGyro-mean()-Y
44. tBodyGyro-std()-X
45. tBodyGyro-std()-Z
46. tBodyGyroJerk-mean()-Y
47. tBodyGyroJerk-std()-X
48. tBodyGyroJerk-std()-Z
49. tBodyAccMag-std()
50. tGravityAccMag-std()
51. tBodyAccJerkMag-std()
52. tBodyGyroMag-std()
53. tBodyGyroJerkMag-std()
54. fBodyAcc-mean()-Y
55. fBodyAcc-std()-X
56. fBodyAcc-std()-Z
57. fBodyAccJerk-mean()-Y
58. fBodyAccJerk-std()-X
59. fBodyAccJerk-std()-Z
60. fBodyGyro-mean()-Y
61. fBodyGyro-std()-X
62. fBodyGyro-std()-Z
63. fBodyAccMag-std()
64. fBodyBodyAccJerkMag-std()
65. fBodyBodyGyroMag-std()
66. fBodyBodyGyroJerkMag-std()

