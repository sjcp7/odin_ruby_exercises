def bubble_sort(array)
  len = array.length
  loop do
    new_len = 0
    for i in 1..(len - 1) do
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        new_len = i
      end
    end
    len = new_len
    break if len <= 1
  end
end

list = [4,3,78,2,0,2]
bubble_sort(list)
p list
