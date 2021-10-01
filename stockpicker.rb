require 'pry-byebug'

def stock_picker(array)
  if array == nil || array.length == 0
    return nil
  end
  dip = array[0]
  max_profit = 0
  second_day = 0
  i = 0
  while i < array.length
    # binding.byebug
    if array[i] < dip
      dip = i
    elsif array[i] - dip > max_profit
      max_profit = array[i] - array[dip]
      second_day = i
    end
    i += 1
  end
  return [dip, second_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])