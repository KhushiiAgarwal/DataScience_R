df1= data.frame(Name=c("Tendulkar","Ponting","Kallis","Dravid","Cook"),Matches=c(200,168,166,164,161),Innings=c(329,287,280,286,291),highscore=c(248,257,224,270,294),avg=c(53.78,51.85,55.37,52.31,45.35))
summary(df1)
View(df1)
str(df1)
df1$Matches
nrow(df1)
colnames(df1)
head(df1)#first 6 values
tail(df1)
df1[2,4]
df1[2,c(4,5)]
df1[,2] #df1$Innings
df1[3,]# df1$"Tendulkar" ##NULL
df1$fif=c(65,62,58,63,57)
cent=c(51,41,45,36,25)
df1=cbind(df1,cent)#cbind=col bind
 x=c("Sanga",134,233,319,57.40,52,38,38)
 y=c("Lara",131,232,400,52.80,48,34,34)
 df1=rbind(df1,x)
 df1=rbind(df1,y)
d2= #Same col names
df1=rbind(df1,df2)
 df1=df1[-c(1,7)] #Delete col
