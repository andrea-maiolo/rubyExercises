#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell.
#Days start at 0

#> stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12


def stock_picker(array)
  val =[]
  array.combination(2) do |combinator| 
    r = combinator[1] - combinator[0] 
    #p combinator
    if r >0 then val.push(r) end
  end
  highest = val.max
  array.combination(2) do |combinator| 
    m = combinator[1] - combinator[0]
    if m == highest 
       p "buy at "+ combinator[0].to_s+ " and sell at "+ combinator[1].to_s+", for a profit of "+m.to_s 
    end
  end
end


#stock_picker([17,3,6,9,15,8,6,1,10])
#stock_picker([7, 9, 5, 6, 3, 2])
stock_picker([2, 3, 10, 6, 4, 8, 1])
