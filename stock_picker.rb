def stock_picker(prices)
  profit = 0
  max_profit = 0
  stock_array = []
  
  prices.each_with_index do |buy_price, buy_date|
    prices.each_with_index do |sell_price, sell_date|
      if buy_date >= sell_date
      else 
        profit = sell_price - buy_price
        if profit > max_profit 
          max_profit = profit
          stock_array = [buy_date, sell_date]
        end
      end
    end
  end
  return stock_array
end

p stock_picker([17,3,6,9,15,8,6,1,10])