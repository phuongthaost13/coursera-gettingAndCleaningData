# R Version Information

|                                             |                    |   |   |   |
|---------------------------------------------|--------------------|---|---|---|
| platform                                    | x86_64-w64-mingw32 |   |   |   |
| arch                                        | x86_64             |   |   |   |
|                      os                     | mingw32            |   |   |   |
| system                                      | x86_64, mingw32    |   |   |   |
| status                                      |                    |   |   |   |
| major                                       | 4                  |   |   |   |
| minor                                       | 1.2                |   |   |   |
| year                                        | 2021               |   |   |   |
| month                                       | 11                 |   |   |   |
| day                                         | 01                 |   |   |   |
| svn rev                                     | 81115              |   |   |   |
| language                                    | R                  |   |   |   |
| version.string R version 4.1.2 (2021-11-01) |                    |   |   |   |
| nickname                                    | Bird Hippie        |   |   |   |

# Packages
- dplyr  
- data.table

# Data cleaning and transformation 

The data cleaning and transformation work are described as below:

- using `read.table()` function to read the data into R.
The text files do not contain header so remember to set `header = FALSE`.  
- The original dataset contains many files and you do not need to load all of them.
Exclude these files: README.txt, all the files in the 2 inertial folder.  
- Using `cbind()` to create the completed training dataset (using data from 
`subject_train.txt`, `X_train.txt`, `y_train.txt`) and test dataset (using data from `subject_test.txt`, `X_test.txt`, `y_test.txt`)  
- Merge the train dataset and test dataset to create one dataset.  
- Because, all the files do not have header, so you have to rename all the columns of all the dataframes. Variables's names are getting from data in `feature.txt` file.  
- Extract only the measurements on the mean and standard deviation for each measurement. using `matches()` from the `dplyr` package to find column names that meet these requirements.  
- The activities are coded as numeric values so they are hard to be interpreted. We changed the numeric codes to descriptive activity names by linking the code with the names in the `activity_labels.txt`. 
Here I used the `mutate-join()` from `dplyr` package.  
- Using `gsub()` to approriate label the data set with descriptive variables names
- Finally, I created a new tidy data set with the average of each variable for each activity and each subject.




