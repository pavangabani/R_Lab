print("year is leap or not")
year <- 2020
print(year)
if((year %% 4 == 0 & year %%100 != 0) | year %% 400 == 0) print("YES") else print("NO")  