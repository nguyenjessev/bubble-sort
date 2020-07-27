require 'pry'

def bubble_sort(nums)
  count = 0
  swapped = true

  while swapped do
    swapped = false
    
    for i in 0..nums.length-count-2
      num = nums[i]
      nextNum = nums[i+1]

      if num > nextNum
        temp = nextNum
        nums[i+1] = num
        nums[i] = temp
        swapped = true
      end
    end

    count += 1
  end

  return nums
end

nums = [4,3,78,2,0,2, 12, 3,354,48,6,1,3,4,8,4,6,7,51,3,4,8,4,3,8,4,63,5]

bubble_sort(nums)