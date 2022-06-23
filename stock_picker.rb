def stockPicker(prices)
    # take in an array of prices
    # find the biggest difference between two days, where the second
    # day is larger than the first and limit the first 
    # to be before the last index
    max_profit = 0
    buyDay = 0
    sellDay = 0
    prices.each_with_index {|price, day|
        
        break if day === prices.length - 1
        
        for d in (day+1)..(prices.length - 1)

            potential_profit = (prices[d] - price)
            if potential_profit > max_profit
                max_profit = potential_profit
                buyDay = day
                sellDay = d
            end
        end
    }

    return [buyDay, sellDay]
end

p stockPicker([17,3,6,9,15,8,6,1,10])