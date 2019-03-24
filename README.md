# ShruggieRegression
In Richard McElreath's **Statistical Rethinking**, he talks about the dangers of "stargazing". That is, running a regression, and looking only at the \*'s, which signify the level of statisitcal significance of a coefficient. To help you avoid this sort of analysis, I've recruited the help of several shruggies ( ¯\\\_(ツ)\_/¯), with various arm lengths to remind you looking only at the \*'s isn't a very good idea. (Original idea due to [Kevin Reuning](https://twitter.com/KevinReuning).

You can find the function in `ShruggieRegression.R`.

For example, below, you'd be tempted to stare at all those stars:

```
> data("iris")
> summary(lm(Sepal.Length ~ . , data = iris))

Call:
lm(formula = Sepal.Length ~ ., data = iris)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.79424 -0.21874  0.00899  0.20255  0.73103 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)        2.17127    0.27979   7.760 1.43e-12 ***
Sepal.Width        0.49589    0.08607   5.761 4.87e-08 ***
Petal.Length       0.82924    0.06853  12.101  < 2e-16 ***
Petal.Width       -0.31516    0.15120  -2.084  0.03889 *  
Speciesversicolor -0.72356    0.24017  -3.013  0.00306 ** 
Speciesvirginica  -1.02350    0.33373  -3.067  0.00258 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.3068 on 144 degrees of freedom
Multiple R-squared:  0.8673,	Adjusted R-squared:  0.8627 
F-statistic: 188.3 on 5 and 144 DF,  p-value: < 2.2e-16
```

Fortunately, we have our friends the shruggies to help "clarify" your regression output:

```
> ShruggieRegression(summary(lm(Sepal.Length ~ . , data = iris)))

Call:
lm(formula = Sepal.Length ~ ., data = iris)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.79424 -0.21874  0.00899  0.20255  0.73103 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)        2.17127    0.27979   7.760 1.43e-12 ¯\_(ツ)_/¯
Sepal.Width        0.49589    0.08607   5.761 4.87e-08 ¯\_(ツ)_/¯
Petal.Length       0.82924    0.06853  12.101  < 2e-16 ¯\_(ツ)_/¯
Petal.Width       -0.31516    0.15120  -2.084  0.03889 ¯\___(ツ)___/¯  
Speciesversicolor -0.72356    0.24017  -3.013  0.00306 ¯\__(ツ)__/¯ 
Speciesvirginica  -1.02350    0.33373  -3.067  0.00258 ¯\__(ツ)__/¯ 
---
Signif. codes:  0 ‘¯\_(ツ)_/¯’ 0.001 ‘¯\__(ツ)__/¯’ 0.01 ‘¯\___(ツ)___/¯’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.3068 on 144 degrees of freedom
Multiple R-squared:  0.8673,	Adjusted R-squared:  0.8627 
F-statistic: 188.3 on 5 and 144 DF,  p-value: < 2.2e-16
```

Isn't that better?

(Yes, this is a joke, and I make no claims to the accuracy or correctness of the code. I used regex to modify the outputs instead of actually rewriting all the `summary` methods for goodness' sake.)
