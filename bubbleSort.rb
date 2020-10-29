# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
 

def bubbleSort(array)
  sorted = array.sort
  if sorted == array 
    p array 
    exit
  end
  array.each do |e|
    eI = array.index(e)
    eN = eI +1 
    n =  array.at(eN)
    if n == nil then bubbleSort(array) end
    if e > n 
      array[eI], array[eN] = array[eN], array[eI]
    end
  end
end

bubbleSort([4,3,78,2,0,2])