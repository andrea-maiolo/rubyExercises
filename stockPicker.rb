#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell.
#Days start at 0

#> stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12


def stock_picker(array)
  sorted = array.sort
  low = sorted[0]
  lowIndex = array.index(low)
  high = sorted[sorted.length - 1]
  highIndex = array.index(high)
  i=2
  while highIndex < lowIndex 
    high = sorted[sorted.length - i ]
    highIndex = array.index(high)
    i +=1
  end
  difference = high - low
  results = Array.new
  results.push(difference) 
  puts results
  j=1
  low = sorted[j]
  lowIndex = array.index(low)
  i=2
  high = sorted[sorted.length - 1]
  highIndex = array.index(high)
  while highIndex < lowIndex 
    high = sorted[sorted.length - i ]
    highIndex = array.index(high)
    i +=1
  end
  difference = high - low
  results = Array.new
  results.push(difference) 
  puts results
end


stock_picker([17,3,6,9,15,8,6,1,10])
