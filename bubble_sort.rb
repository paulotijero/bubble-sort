def bubble_sort(array)
  (array.size - 2).downto(0) do |i|
    (0).upto(i) do |j|
      if array[j] > array[j+1]
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2]) #=> [0, 2, 2, 3, 4, 78]
p bubble_sort([17,3,6,9,15,8,6,1,10]) #=> [1, 3, 6, 6, 8, 9, 10, 15, 17]
p bubble_sort([11,92,75,13,25,47,87,22,89,40]) #=> [11, 13, 22, 25, 40, 47, 75, 87, 89, 92]
p bubble_sort([1,5,27,27,11,10,3,38,23,17]) #=> [1, 3, 5, 10, 11, 17, 23, 27, 27, 38]
p bubble_sort([13,3,7,29,18,15,34,19,2,35]) #=> [2, 3, 7, 13, 15, 18, 19, 29, 34, 35]
