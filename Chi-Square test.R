# Chi-Square test
# It used to determine whether any association of two variables is there or not

#will import csv.file which include treatment vs. improvement
#as per table we have to check whether treatment and improvement has any relationship or not.
#Like person who is under medical care or treatment is improving after treatment and even after giving treatment they are not improving. 

read.csv(file.choose())

#assign as chi_data
chi_data<-read.csv(file.choose())
chi_data

#will check first 6 rows
head(chi_data)
#  X id   treatment  improvement
#1 1  1     treated     improved
#2 2  2     treated     improved
#3 3  3 not-treated     improved
#4 4  4     treated     improved
#5 5  5     treated not-improved
#6 6  6     treated not-improved

#will check last six data
tail(chi_data)
# X  id   treatment  improvement
#100 100 100 not-treated     improved
#101 101 101     treated     improved
#102 102 102     treated     improved
#103 103 103 not-treated not-improved
#104 104 104     treated     improved
#105 105 105 not-treated not-improved

#will check in table that how many patient are improved and not improved

table(chi_data$treatment,chi_data$improvement)
#                 improved   not-improved
#not-treated       26           29
#treated           35           15

#as per above we are unable to confirm whether both have any relationship
# will decide Ha and Ho
#Ho= two variables are independent
#Ha= two variables are dependent

#will apply chi.test function

chisq.test(chi_data$treatment,chi_data$improvement)
#data:  chi_data$treatment and chi_data$improvement
#X-squared = 4.6626, df = 1, p-value = 0.03083

# based on p-value=0.030 will accept Ha alternate hypotesis (p-value<0.05 will accept Ha)





