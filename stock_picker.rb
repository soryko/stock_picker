

list = [17,3,6,9,15,8,6,1,10]

def stock_picker(list)
    max_profit = 0
    buy_price = list[0]
    sell = 1
    buy = list.index(buy_price)

    list.each_with_index do |item, index|
        buy_price = item if item <= buy_price
        profit = item - buy_price
        if profit > max_profit
            max_profit = profit
            sell = index
        end
        break if sell <= buy
    end
    buy = buy + 1
    final = "[#{buy}, #{sell}]"
    puts final
    puts "buy at day #{buy} and sell at day#{sell} for $#{max_profit} profit."
end

stock_picker(list)


