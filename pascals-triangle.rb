

def generate(numRows)
  ans = [[1], [1,1]]

  if numRows == 1 
    return [[1]]
  elsif numRows == 2
    return [[1], [1,1]]
  end

  (3..numRows).each { |i| 
    newArray = []

    (1..i).each { |n| 
      pre = ans[i - 2]

      if n == 1 
        newArray.push(1)
      elsif n > 1 && n < i
        newArray.push(pre[n-1] + pre[n-2])
      else
        newArray.push(1)
      end
    }

    ans.push(newArray)
   }

   ans
end

puts "#{generate(1)}"
puts "#{generate(2)}"
puts "#{generate(3)}"
puts "#{generate(4)}"
puts "#{generate(5)}"