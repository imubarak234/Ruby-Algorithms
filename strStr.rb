def strStr(haystack, needle)
  finalAnswer = -1
  length = needle.length - 1


  if needle.length == 0
    finalAnswer = 0
  elsif haystack.length >= needle.length
    haystack.split('').each_with_index {
      |n, idx|
      pointerX = idx
      count = 0
      if needle[0] == haystack[idx]
        needle.split('').each_with_index {
          |y, idy|
          if needle[idy] == haystack[pointerX]
            count++
          end
          pointerX++
        }
      end
      if count == needle.length
        finalAnswer = idx
        break
      end
    }
  end

  finalAnswer
end

strStr('hello','ll')

var = 'hello'
puts var

