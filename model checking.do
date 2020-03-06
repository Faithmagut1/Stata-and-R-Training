*===============================================================================
*					MODEL CHECKING 
*===============================================================================

* We want to check wether modelling age as continous variable is better than modelling age
* as caterogirical variable.
****************************** METHOD ONE - LRTEST

* Procedure 

* 1 Run logstic regression with age as continous variable as estore that model in A //unrestricted model
* logistic outcome c.age covi where j = 1 , 2 , 3 .... n
* est A 

* 2 Run logistic regression with age as categorical variable and estore that model  //restricted model
* logistic outcome i.age covj where j = 1 , 2 , 3 .... n
* est B 

* 3 Test the two models using lrtest 
* lrtest A B

* Null Hypothesis : B is nested in A (Model B is better than A)
* When model B is nested in  another model A , this means that:

*Model A is unrestricted model while model B is the restricted model/Reduced model. 
*Therefore the null hypothesis can be stated as the Restricted model is statistically better than the unrestricted model

**** Output 

* You will get a p value which will be used in decision making 

* P value < 0.05 then reject the H0 and conclude that B is not better than A - in other words 
* A is better than B  and the converse is true 


*************************** METHOD TWO

* Procedure 

* 1 Run the logistic regression model with age as continous variable 
* logistic outcome c.age covi where j = 1 , 2 , 3 .... n

* Immediately chech the AIC of the model and note it down 
* estat ic 

* 2 Run the logistic regression model with age as  a categorical variable 
* logistic outcome i.age covj where j = 1 , 2 , 3 .... n

* Immediately check the AIC of the model and note it down 
* estat ic 


*****************Interpretation 
* The model with the lower AIC is the best model - if model with age as a continous variable 
* has a lower AIC than the one wth age as categorical then that model is better.

* You can use this second method to the the lrtest. The two almost always 
* be in the same direction. They agree on which model fits best the data.

