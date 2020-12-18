def stock_picker(stock_prices)
  pairs = {}
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        pairs[[buy_day, sell_day]] = sell_price - buy_price
      end
    end
  end
  sorted_pairs = Hash[pairs.sort_by { |key, value| value }] # Didn't REALLY need to convert it a hash but hey, i've learned new stuff
  best_pair = sorted_pairs.keys.last
  best_pair
end

prices = [17,3,6,9,15,8,6,1,10]
p stock_picker(prices)
