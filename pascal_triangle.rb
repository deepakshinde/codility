def solution(p)
    new_arrr = p
    count = 0
    for i in 0..p.size - 1
        if new_arrr.size == 1
            if new_arrr[0] == true
                count += 1
                break
            end
        elsif new_arrr.size == 2
            val = new_arrr[0] | new_arrr[1]
            if new_arrr[0] == true
                count += 1
            end
            if new_arrr[1] == true
                count += 1
            end
            new_arrr = [val]
        else
            m = []
            new_arrr.each_with_index do |d, index|
                return if new_arrr.size <= 2
                if index <= (new_arrr.size - 2)
                    val = new_arrr[index] || new_arrr[index + 1]
                    m.push val
                end
                count += 1 if d
            end
            new_arrr = m
        end
    end
    return count
end
