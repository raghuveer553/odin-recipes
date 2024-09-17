def bubble_sort(in_arr:)
    in_arr.each do |el| 
        if el.is_a?(Integer) == false
            raise Error.new("All elements should be integer")
        end
    end

    if in_arr.length <= 1
        in_arr
    end
    bubbles_left = in_arr.length - 1
    while bubbles_left > 0 do
        i = 0
        j = 1
        while j < bubbles_left+1 do
            if in_arr[i] > in_arr[j]
                temp = in_arr[j]
                in_arr[j] = in_arr[i]
                in_arr[i] = temp
            end

            i += 1
            j += 1
        end
        bubbles_left -= 1
    end
end

my_arr = [2,1,4,5,3]
bubble_sort(in_arr:my_arr)
puts my_arr