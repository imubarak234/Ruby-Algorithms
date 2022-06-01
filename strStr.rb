def strStr(haystack, needle)
  finalAnswer = -1
  length = needle.length - 1

  if needle.length == 0
    finalAnswer = 0;
  elsif haystack.length >= needle.haystack
    (0..haystack.length).each do |n| 
      pointerX = n
      count = 0
      if needle[0] == haystack[n]
        (0..needle.length).each { |y|
          if needle[y] == haystack[pointerX]
            count ++
          end
          pointerX ++
        }
      end
      if count == needle.length
        finalAnswer = n
        break
      end
    end
  end
  puts finalAnswer
end

strStr('hello','ll')

var = 'hello'
puts var

