workout01
================
Shiping Li

5) Report
---------

#### 5.1) Effective Shooting Percentage

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
shots_data <- read.csv("../data/shots-data.csv", stringsAsFactors = FALSE)
# 2PT Effective Shooting % by Player
shots_data[shots_data$shot_type=="2PT Field Goal",] %>%
  group_by(name) %>%
  summarise(total = n(),
            made = sum(shot_made_flag=="shot_yes")) %>%
  mutate(perc_made = made/total) %>%
  arrange(desc(perc_made))
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Andre Iguodala   210   134     0.638
    ## 2 Kevin Durant     643   390     0.607
    ## 3 Stephen Curry    563   304     0.540
    ## 4 Klay Thompson    640   329     0.514
    ## 5 Draymond Green   346   171     0.494

``` r
# 3PT Effective Shooting % by Player
shots_data[shots_data$shot_type=="3PT Field Goal",] %>%
  group_by(name) %>%
  summarise(total = n(),
            made = sum(shot_made_flag == "shot_yes")) %>%
  mutate(perc_made = made/total)%>%
  arrange(desc(perc_made))
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Klay Thompson    580   246     0.424
    ## 2 Stephen Curry    687   280     0.408
    ## 3 Kevin Durant     272   105     0.386
    ## 4 Andre Iguodala   161    58     0.360
    ## 5 Draymond Green   232    74     0.319

``` r
# Effective Shooting % by Player:
shots_data %>%
  group_by(name) %>%
  summarise(total = n(),
            made = sum(shot_made_flag=="shot_yes")) %>%
  mutate(perc_made = made/total) %>%
  arrange(desc(perc_made))
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Kevin Durant     915   495     0.541
    ## 2 Andre Iguodala   371   192     0.518
    ## 3 Klay Thompson   1220   575     0.471
    ## 4 Stephen Curry   1250   584     0.467
    ## 5 Draymond Green   578   245     0.424

#### 5.2) Narrative

##### Background

The Golden State Warriors entered the 2015-16 season as a rare breed -- defending champions with a chip on their shoulders.The team set a regular-season record with 73 wins with the NBA’s first unanimous MVP only to blow a 3-1 lead in the 2016 NBA Finals. Many factors all together determined the excellent performance of Golden State Warriors in Season 2016\[1\]. The report will focus on analyzing shots made Andre Iguodala, Draymond Green, Kevin Duran, Klay Thompson, and Stephen Curry in Season 2016 and find out how the Golden State Warriors created such a astonishing record.

###### Data and Analysis

The data frame "shots\_data" inclues details of shot attempts by the five players in differnt periods, and as well wheather they made the shot successfully or not,by what action types and from what field goals. Moreover, the shot distance and the court coordinates are also given in the data frame.

**2PT Effective Shooting Percentage by Player:** ![](../images/gsw-shot-chart.pdf)

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Andre Iguodala   210   134     0.638
    ## 2 Kevin Durant     643   390     0.607
    ## 3 Stephen Curry    563   304     0.540
    ## 4 Klay Thompson    640   329     0.514
    ## 5 Draymond Green   346   171     0.494

From the 2PT effective shooting percentage by player, Kevin Durant and Klay Thompson are the two players who attempted to make the most 2-point shots. Even though their total shots were almostly the same, the number of made shots of Kevin Durant (390) were much higher than that of Klay Thompson (329).Moreover,Andre Iguodala made the least attempts of 2-point shots,yet he had highest success shot percentage.

**3PT Effective Shooting Percentage by Player:**

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Klay Thompson    580   246     0.424
    ## 2 Stephen Curry    687   280     0.408
    ## 3 Kevin Durant     272   105     0.386
    ## 4 Andre Iguodala   161    58     0.360
    ## 5 Draymond Green   232    74     0.319

From the 3PT effective shooting percentage by player,Stephen Curry made the most total shots with the second highest success shot percentage while Klay Thompson made the second most total shots and got the highest success shot percentage.

**Effective Shooting Percentage by Player:**

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Kevin Durant     915   495     0.541
    ## 2 Andre Iguodala   371   192     0.518
    ## 3 Klay Thompson   1220   575     0.471
    ## 4 Stephen Curry   1250   584     0.467
    ## 5 Draymond Green   578   245     0.424

From the total effective shooting percentage by player, Kaly Thompson and Stephen Curry made the most total shots over 1200 among five player,and both of them got a standout success shot percentage, which are 0.4713115 and 0.4672000 respectively. However, Kevin Durant made lower than 1000 total shot with the hightest success percentage 0.5409836.

###### Discussion and Conclusion

Overall, all of these five players had really good performance in 2016 season.The success of Golden State Warriors was largely determined by the high shot effectiveness of these key players.

###### References

\[1\] <https://basketball-reference.com/teams/GSW/2017.html>

\[2\] "Purdy: Put a pause on the dynasty talk–and just enjoy this Warriors title". Mercury News. Retrieved June 12, 2017.
