def strStr(haystack, needle)
  finalAnswer = -1
  length = needle.length - 1


  if needle.length == 0
    finalAnswer = 0
  elsif haystack.length >= needle.length
    haystack.split('').each_with_index do |n, idx|
      pointerX = idx
      count = 0
      if needle[0] == haystack[idx]
        needle.split('').each_with_index do |y, idy|
          if needle[idy] == haystack[pointerX]
            count += 1
          end
          pointerX += 1
        end
      end
      if count == needle.length
        finalAnswer = idx
        break
      end
    end
  end

  finalAnswer
end

puts strStr('hello','ll')

var = 'hello'
puts var

