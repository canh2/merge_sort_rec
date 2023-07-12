
def merge_sort(array)
    if array.size == 1
        return array
    end
        arr1= merge_sort(array.slice(0, array.size/2))
        arr2 = merge_sort(array.slice(array.size/2, array.size)) 
        sorted = []
       while arr1.length !=0 && arr2.length !=0
        if  arr1.first > arr2.first
             sorted << arr2[0]
             arr2.shift(1)
        else
            sorted << arr1[0]
            arr1.shift(1)
        end
       end  
        return sorted.concat(arr1).concat(arr2)
end

p merge_sort([1,45,6,8,7,0,4,6])