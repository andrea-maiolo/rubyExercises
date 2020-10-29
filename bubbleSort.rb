# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubbleSort(array)
    n = array.length
    loop do
      m = 0
      for i =1 to n - 1 .. do
        if array[i - 1] > array[i] 
            
    end
    # repeat
    #     newn := 0
    #     for i := 1 to n - 1 inclusive do
    #         if A[i - 1] > A[i] then
    #             swap(A[i - 1], A[i])
    #             newn := i
    #         end if
    #     end for
    #     n := newn
    # until n ≤ 1
end 

bubbleSort([4,3,78,2,0,2])