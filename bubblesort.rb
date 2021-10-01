require 'pry-byebug'

def bubble_sort(array)
  swapped = true
  i_var = 0
  j = 0
  while i_var < array.length
    # binding.byebug
    j = 0
    while j < (array.length) -1
      if array[j] > array[j + 1]
        temp = array[j + 1]
        array[j+ 1] = array[j]
        array[j] = temp
        next

      end
      j += 1
    end
    i_var += 1
  end
  array
end

p bubble_sort([4,3,78,2,0,2])