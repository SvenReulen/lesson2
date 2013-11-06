# Sven Reulen
# Code from wikipedia
#if year is divisible by 400 then
#is_leap_year
#else if year is divisible by 100 then
#not_leap_year
#else if year is divisible by 4 then
#is_leap_year
#else
#not_leap_year

# Function 
is.leap <- function(year){
  if(year < 1582){
    x = 'Years below 1582 are not returned'
  }else if(year %% 400 ==0){
    x = 'This is a leap year'
  }else if(year %% 100 == 0){
    x = 'This is not a leap year'
  }else if(year %% 4 ==0) {
    x = 'This is a leap year'
  }else{
    x = 'This is not a leap year'
  }  
  return(x) 
}
# Year 2000 is leap year
is.leap(2000)
# Year 1999 is not a leap 
is.leap(1999)
# year 1804 is leap year
is.leap(1804)
# year 1805 is leap year
is.leap(1805)
# year 1500 should not be returned
is.leap(1500)
leap(1500)