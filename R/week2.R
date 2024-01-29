#Import and Labeling
rt_df<-read.csv(file="../data/week2.csv", header=1)
rt_df$condition<-factor(rt_df$condition, labels=c("Control","Experimental"))
rt_df$gender<-factor(rt_df$gender, labels=c("Female","Male","Nonbinary"))

#Analysis
mean(rt_df$rt)
rt_f_df<-subset(rt_df, subset=gender=="Female")
hist(rt_f_df$rt)
datasets<-list(rt_df, rt_f_df)
datasets[[1]]$rt