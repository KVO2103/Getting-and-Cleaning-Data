---
title: "CodeBook"
author: "Katharina Voss"
date: "11 2 2022"
output: html_document
---


## tidyset data set descrption
The tidyset data contains 180 rows and 82 columns, where each row contains the average for each subject_ID and each activity_Type

##From the original Data set only the mean and standard deviations were kept in tidyset

*Mean() means mean value
*STD() means standard deviation

## The data in tidyset is aeraged based on subject_ID and activity_Type
subject_ID is numbered sequentially from 1 to 30
activity_Type has 6 types of activity:

1.WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING


## The variables of tidyset are
"activity_ID"                                        
"TimeBodyAccelerometerMean()-X"                     
"TimeBodyAccelerometerMean()-Y"                      
"TimeBodyAccelerometerMean()-Z"                     
"TimeBodyAccelerometerSTD()-X"                       
"TimeBodyAccelerometerSTD()-Y"                      
"TimeBodyAccelerometerSTD()-Z"                       
"TimeGravityAccelerometerMean()-X"                  
"TimeGravityAccelerometerMean()-Y"                   
"TimeGravityAccelerometerMean()-Z"                  
"TimeGravityAccelerometerSTD()-X"                    
"TimeGravityAccelerometerSTD()-Y"                   
"TimeGravityAccelerometerSTD()-Z"                    
"TimeBodyAccelerometerJerkMean()-X"                 
"TimeBodyAccelerometerJerkMean()-Y"                  
"TimeBodyAccelerometerJerkMean()-Z"                 
"TimeBodyAccelerometerJerkSTD()-X"                   
"TimeBodyAccelerometerJerkSTD()-Y"                  
"TimeBodyAccelerometerJerkSTD()-Z"                   
"TimeBodyGyroscopescopeMean()-X"                    
"TimeBodyGyroscopescopeMean()-Y"                     
"TimeBodyGyroscopescopeMean()-Z"                    
"TimeBodyGyroscopescopeSTD()-X"                      
"TimeBodyGyroscopescopeSTD()-Y"                     
"TimeBodyGyroscopescopeSTD()-Z"                      
"TimeBodyGyroscopescopeJerkMean()-X"                
"TimeBodyGyroscopescopeJerkMean()-Y"                
"TimeBodyGyroscopescopeJerkMean()-Z"                
"TimeBodyGyroscopescopeJerkSTD()-X"                 
"TimeBodyGyroscopescopeJerkSTD()-Y"                 
"TimeBodyGyroscopescopeJerkSTD()-Z"           
"TimeBodyAccelerometerMagnitudeMean()"              
"TimeBodyAccelerometerMagnitudeSTD()"              
"TimeGravityAccelerometerMagnitudeMean()"           
"TimeGravityAccelerometerMagnitudeSTD()"            
"TimeBodyAccelerometerJerkMagnitudeMean()"          
"TimeBodyAccelerometerJerkMagnitudeSTD()"    
"TimeBodyGyroscopescopeMagnitudeMean()"             
"TimeBodyGyroscopescopeMagnitudeSTD()"       
"TimeBodyGyroscopescopeJerkMagnitudeMean()"         
"TimeBodyGyroscopescopeJerkMagnitudeSTD()"      
"FrequencyBodyAccelerometerMean()-X"                
"FrequencyBodyAccelerometerMean()-Y"            
"FrequencyBodyAccelerometerMean()-Z"                
"FrequencyBodyAccelerometerSTD()-X"             
"FrequencyBodyAccelerometerSTD()-Y"                 
"FrequencyBodyAccelerometerSTD()-Z"             
"FrequencyBodyAccelerometerMeanFreq()-X"            
"FrequencyBodyAccelerometerMeanFreq()-Y"        
"FrequencyBodyAccelerometerMeanFreq()-Z"            
"FrequencyBodyAccelerometerJerkMean()-X"        
"FrequencyBodyAccelerometerJerkMean()-Y"            
"FrequencyBodyAccelerometerJerkMean()-Z"         
"FrequencyBodyAccelerometerJerkSTD()-X"             
"FrequencyBodyAccelerometerJerkSTD()-Y"         
"FrequencyBodyAccelerometerJerkSTD()-Z"             
"FrequencyBodyAccelerometerJerkMeanFreq()-X"     
"FrequencyBodyAccelerometerJerkMeanFreq()-Y"        
"FrequencyBodyAccelerometerJerkMeanFreq()-Z"     
"FrequencyBodyGyroscopescopeMean()-X"               
"FrequencyBodyGyroscopescopeMean()-Y"             
"FrequencyBodyGyroscopescopeMean()-Z"               
"FrequencyBodyGyroscopescopeSTD()-X"             
"FrequencyBodyGyroscopescopeSTD()-Y"                
"FrequencyBodyGyroscopescopeSTD()-Z"             
"FrequencyBodyGyroscopescopeMeanFreq()-X"           
"FrequencyBodyGyroscopescopeMeanFreq()-Y"       
"FrequencyBodyGyroscopescopeMeanFreq()-Z"           
"FrequencyBodyAccelerometerMagnitudeMean()"        
"FrequencyBodyAccelerometerMagnitudeSTD()"          
"FrequencyBodyAccelerometerMagnitudeMeanFreq()"   
"FrequencyBodyAccelerometerJerkMagnitudeMean()"     
"FrequencyBodyAccelerometerJerkMagnitudeSTD()"    
"FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()" 
"FrequencyBodyGyroscopescopeMagnitudeMean()"      
"FrequencyBodyGyroscopescopeMagnitudeSTD()"         
"FrequencyBodyGyroscopescopeMagnitudeMeanFreq()"  
"FrequencyBodyGyroscopescopeJerkMagnitudeMean()"    
"FrequencyBodyGyroscopescopeJerkMagnitudeSTD()"   
"FrequencyBodyGyroscopescopeJerkMagnitudeMeanFreq()"
"subject_ID"                                      
"activity_Type"   

##variable units
Activit_Type is character type
subject_ID is integer type
all other variables are numeric type
