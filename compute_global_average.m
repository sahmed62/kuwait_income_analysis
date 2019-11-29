
# read in the adjusted income: adjusted income without Holy See, Liechtenstein, Monaco, Nauru, Palau, San Marino, St. Kitts and Nevis, Tuvalu
# remove the first column (country names)
# the first row (year)
# as well as "projection" columns beyond 2018
income_all = csvread('./income_all_adjusted.csv');
income_all = income_all(2:end,2:220);

# read in the life-expectancy CSV file
# remove the first column (country names)
# the first row (year)
# as well as "projection" columns beyond 2018
lifeex_all = csvread('./life_expectancy_all.csv');
lifeex_all = lifeex_all(2:end,2:220);

# read in the adjusted population totals: population totals without Holy See, Liechtenstein, Monaco, Nauru, Palau, San Marino, St. Kitts and Nevis, Tuvalu
# remove the first column (country names)
# the first row (year)
# as well as "projection" columns beyond 2018
population_all = csvread('./population_total_adjusted.csv');
population_all = population_all(2:end,2:220);

# read in Kuwait income, life-expectancy and remove row 1 (year):
income_kuwait = csvread('./income_Kuwait.csv');
income_kuwait = income_kuwait(2,1:219);
lifeex_kuwait = csvread('./life_expectancy_Kuwait.csv');
lifeex_kuwait = lifeex_kuwait(2,1:219);

# compute the total population for each year
population_world = sum(population_all, 1);

# compute the population-weighted global average income
income_world = sum((income_all .* population_all), 1) ./ population_world;

# compute the population-weighted global average life expectancy
lifeex_world = sum((lifeex_all .* population_all), 1) ./ population_world;

years = 1800:2018;

csvwrite('./income_world.csv', [years; income_world]);
csvwrite('./lifeex_world.csv', [years; lifeex_world]);

# compute excess life-expectancy and income for Kuwait over that of the world
excess_lifeex_kuwait = lifeex_kuwait - lifeex_world;

excess_income_kuwait = income_kuwait - income_world;

csvwrite('./excess_income_kuwait.csv', [years; excess_income_kuwait]);
csvwrite('./excess_lifeex_kuwait.csv', [years; excess_lifeex_kuwait]);

