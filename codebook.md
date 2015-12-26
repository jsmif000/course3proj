The output table "step5" contains the following 4 columns:

(1) "subject" -- integer values [1-30]; each value identifies a specific study participant;

(2) "activity_name" -- character, one of six values identifying the activity:
  laying
  sitting
  standing
  walking
  walking_downstairs
  walking_upstairs
  
 (3) "measurement_type" -- character, one of 66 values identifying the measurement:
 tBodyAcc.mean...X           
 tBodyAcc.mean...Y          
 tBodyAcc.mean...Z           
 tBodyAcc.std...X           
 tBodyAcc.std...Y            
 tBodyAcc.std...Z           
 tGravityAcc.mean...X   
 tGravityAcc.mean...Y       
 tGravityAcc.mean...Z        
 tGravityAcc.std...X        
 tGravityAcc.std...Y         
 tGravityAcc.std...Z        
 tBodyAccJerk.mean...X       
 tBodyAccJerk.mean...Y      
 tBodyAccJerk.mean...Z       
 tBodyAccJerk.std...X       
 tBodyAccJerk.std...Y        
 tBodyAccJerk.std...Z       
 tBodyGyro.mean...X          
 tBodyGyro.mean...Y         
 tBodyGyro.mean...Z          
 tBodyGyro.std...X          
 tBodyGyro.std...Y           
 tBodyGyro.std...Z          
 tBodyGyroJerk.mean...X      
 tBodyGyroJerk.mean...Y     
 tBodyGyroJerk.mean...Z      
 tBodyGyroJerk.std...X      
 tBodyGyroJerk.std...Y       
 tBodyGyroJerk.std...Z      
 tBodyAccMag.mean..          
 tBodyAccMag.std..          
 tGravityAccMag.mean..       
 tGravityAccMag.std..       
 tBodyAccJerkMag.mean..      
 tBodyAccJerkMag.std..      
 tBodyGyroMag.mean..         
 tBodyGyroMag.std..         
 tBodyGyroJerkMag.mean..     
 tBodyGyroJerkMag.std..     
 fBodyAcc.mean...X           
 fBodyAcc.mean...Y          
 fBodyAcc.mean...Z           
 fBodyAcc.std...X           
 fBodyAcc.std...Y            
 fBodyAcc.std...Z           
 fBodyAccJerk.mean...X       
 fBodyAccJerk.mean...Y      
 fBodyAccJerk.mean...Z       
 fBodyAccJerk.std...X       
 fBodyAccJerk.std...Y        
 fBodyAccJerk.std...Z       
 fBodyGyro.mean...X          
 fBodyGyro.mean...Y         
 fBodyGyro.mean...Z          
 fBodyGyro.std...X          
 fBodyGyro.std...Y           
 fBodyGyro.std...Z          
 fBodyAccMag.mean..          
 fBodyAccMag.std..          
 fBodyBodyAccJerkMag.mean..  
 fBodyBodyAccJerkMag.std..  
 fBodyBodyGyroMag.mean..     
 fBodyBodyGyroMag.std..     
 fBodyBodyGyroJerkMag.mean.. 
 fBodyBodyGyroJerkMag.std..

 (4) "value" -- represents the mean of the values from the original data, grouped by the first three columns.  The original values are measured on a scale of -1 to 1.