library(ggplot2)
boxoffice = read.csv('C:/Users/user/Downloads/boxoffice.csv', header=T)
head(boxoffice)

#rank                          title      title_short   amount amount_text
#1    1       Star Wars: The Last Jedi        Star Wars 71565498        $71 
#2    2 Jumanji: Welcome to the Jungle          Jumanji 36169328        $36 
#3    3                Pitch Perfect 3  Pitch Perfect 3 19928525        $19 
#4    4           The Greatest Showman Greatest Showman  8805843         $8 
#5    5                      Ferdinand        Ferdinand  7316746         $7

boxoffice[1, "amount"]

#[1] 71565498
