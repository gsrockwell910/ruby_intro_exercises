stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  max_profit = 0
  days = nil

  #compare each element of each array
  array.each_with_index do |buy, index1| 
   array.each_with_index do |sell, index2|
      profit = sell - buy

      #if result is greater than max and index of item 1 is lower than index of item 2 max = profit if not move on
      profit > max_profit && index1 < index2 ? max_profit = profit : next
      #set days equal to an array of the 2 indices that returned true to the above statement
      days = [index1, index2]
    end
  end
  #return array
  p days
end


stock_picker(stocks)