
1. If Z is norm (mean = 0, sd = 1),
a). Find P(Z > 2.64)

pnorm(2.64, lower.tail = FALSE)



b). Find P(|Z| > 1.39)

2*pnorm(-1.39)



2. Suppose p = the proportion of students who are admitted to the graduate school of the University of
California at Berkeley, and suppose that a public relation officer boasts that UCB has historically had a
40% acceptance rate for its graduate school. Consider the data stored in the table UCBAdmissions from
1973. Assuming these observations constituted a simple random sample, are they consistent with the
officerâ..s claim, or do they provide evidence that the acceptance rate was significantly less than 40%?
Use an Î± = 0.01 significance level.


 null hypothesis is P=0.4

# we reject the null hypothesis is P is too small
where alpha=0.01 and z0.01 is 

-qnorm(0.99)
  -2.32


#we have to find the number of pleple admitted not admitted. 
library((UCBthesis))
A<-as.data.frame(UCBAdmissions)
head(A)

xtabs(Freq~Admit, data=A) 
admitted = 1755; Rejected=2771


#now we calculate the value of the test statistic. 

phat<-1755/(1755+2771)
(phat-0.4)/sqrt(0.4*0.6/(1755+2771))
Answer = -1.680919

# Out or test statistic is not less than -2.32, so it dose not fall in to the critical region. 
Therfore we faill to reject the null hypthesis that the true proportion of students admitted to 
graduate school is less than 40% and say that the observed data are consistent with the officers 
claim at the alpha=0.01 signficant level. 






