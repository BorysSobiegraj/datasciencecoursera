
setwd('C:\\Users\\bsobiegraj001\\Desktop\\Data Scientist track\\Getting and Cleaning Data\\Project')

library(dplyr)

######################## General Info Data Frames ##################################
DataHeaders <- read.table('.\\UCI HAR Dataset\\features.txt')
DataActivitiesNames <- read.table('.\\UCI HAR Dataset\\activity_labels.txt')

######################## TRAIN Data sets ################################################
trainData <- read.table('.\\UCI HAR Dataset\\train\\X_train.txt')
trainDataActivitiesNum <- read.table('.\\UCI HAR Dataset\\train\\Y_train.txt')
trainSubject  <- read.table('.\\UCI HAR Dataset\\train\\subject_train.txt')

######################## TEST Data sets ################################################
testData <- read.table('.\\UCI HAR Dataset\\test\\X_test.txt')
testDataActivitiesNum <- read.table('.\\UCI HAR Dataset\\test\\y_test.txt')
testSubject  <- read.table('.\\UCI HAR Dataset\\test\\subject_test.txt')


#########Task 3 p1##############
Train <-  mutate(trainData, ActivityID = as.factor(as.numeric(unlist(trainDataActivitiesNum))), SubjectID = as.factor(as.numeric(unlist(trainSubject)))  ) 
Test <-  mutate(testData, ActivityID = as.factor(as.numeric(unlist(testDataActivitiesNum))), SubjectID = as.factor(as.numeric(unlist(testSubject))) ) 


#########Task 1#################
Data <- rbind(Train, Test)

#########Task 4 p1#############
names(Data) <- c(as.character(DataHeaders[,2]),'ActivityID', 'SubjectID')

#########Task 2##############

Data <- Data[, ( grepl('mean()',names(Data)) | grepl('std()',names(Data)) | grepl('ActivityID',names(Data)) | grepl('SubjectID',names(Data))  )
                  & !grepl('Freq()',names(Data))
              ]

#########Task 3 p2#################

Data <- merge.data.frame(Data,DataActivitiesNames, by.x = "ActivityID", by.y = "V1")
Data <- rename(Data,  ActivityName = V2)


#########Task 4 p2##############

namesData <- names(Data)
namesData <- make.names(namesData)

namesData <- sub('.std..', 'StdDiv', namesData , ignore.case = TRUE)
namesData <- sub('.mean..', 'Mean', namesData , ignore.case = TRUE)

namesData <- sub('.X', 'Xaxis', namesData )
namesData <- sub('.Y', 'Yaxis', namesData )
namesData <- sub('.Z', 'Zaxis', namesData )

names(Data) <- namesData

#########Task 5##################

AveragedData <- Data %>% select(-ActivityID) %>% group_by(SubjectID, ActivityName ) %>% summarise_each(funs(mean))

write.table(AveragedData, '.\\TidyDataSet.txt', row.names = FALSE)


