def bubble_sort(array)
  array.each do
    (array.length - 1).times do |index|
      if array[index] > array[index + 1] 
        #Swap index
         array[index], array[index + 1] = array[index + 1], array[index]
        #Variable to keep track of if indices have been swapped
         swapped = true
        #if swapped is false break (exit loop)
         !swapped ? break : next
      end
    end
  end
  #return array
  p array
end

numbers = [4,3,78,2,0,2]

bubble_sort(numbers)