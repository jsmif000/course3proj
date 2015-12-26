# -- STEP 1 --
# Read files from unzipped directory
test_y <- read.table("./test/y_test.txt")
test_x <- read.table("./test/X_test.txt")
test_s <- read.table("./test/subject_test.txt")
train_y <- read.table("./train/y_train.txt")
train_x <- read.table("./train/X_train.txt")
train_s <- read.table("./train/subject_train.txt")

activity_labels <- read.table("activity_labels.txt")
activity_labels[,2] <- tolower(activity_labels[,2])
activity_labels_valid <- make.names(activity_labels$V2, unique = TRUE, allow_ = TRUE)
features_labels <- read.table("features.txt")
features_labels_valid <- make.names(features_labels$V2, unique = TRUE, allow_ = TRUE)

colnames(test_s) = "subject"
colnames(train_s) = "subject"
colnames(test_y) = "activity"
colnames(train_y) = "activity"
colnames(test_x) = features_labels_valid
colnames(train_x) = features_labels_valid
colnames(activity_labels) = c("activity", "activity_name")

# selecting the column numbers for labels that contain the word "mean()"
# or "std()".  Not including labels with "meanFreq" because they
# seem to represent something other than a true mean
select_cols <- grep("mean|std",features_labels_valid)
meanfreq_cols <- grep("meanF",features_labels_valid)
select_cols <- select_cols[!(select_cols %in% meanfreq_cols)]

test_data <- cbind(cbind(test_x, test_y),test_s)
train_data <- cbind(cbind(train_x, train_y), train_s)
full_data <- rbind(test_data, train_data)

# -- STEP 2 --
#selecting the columns with "mean" and "std"
#as well as columns 562 (activity number) and 563 (subject number)
select_data <- full_data[c(select_cols,562,563)]

# -- STEP 3 -- 
#merge with activity name, then remove activity number
# (which was moved to the first column in the merge)
select_data <- merge(select_data,activity_labels)
select_data <- select_data[2:69]

# -- STEP 5 -- 
#convert to "long form" and calculate the mean of
#each combination of [subject, activity type and measurement type]
step5 <- select_data %>%
   melt(id.vars=c("subject", "activity_name"),
        variable.name=("measurement_type")) %>%
   group_by(subject,activity_name, measurement_type) %>%
   summarize_each(funs(mean))

write.table(step5, file="step5.txt", row.name=FALSE)
