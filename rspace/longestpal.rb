# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
  if(palindrome?(string))
    return string
  end
  
  start = 0
  length = string.length
  sub = ''
  arr = []
  
  while(start < length-2)
  
    sub = string.slice(start, length)
    
    if(palindrome?(sub))
      arr.push(sub)
    end 
    
    start = start + 1
  end 
  
  start = 0 
  
  while(length > 1)
    
    sub = string.slice(1, length-1)
    
    if(palindrome?(sub))
      arr.push(sub)
    end 
    
    length = length - 1
  end 
  
  start = 0 
  count = 0 
  temp = 0 
  pal_arr = [] 
  
  while(start < arr.length)
    count = arr[start].length
	
    if(count>temp)
      temp = count 
	  pal_arr[0] = temp 
	  pal_arr[1] = arr[start]
    end 
	
    if(start == arr.length-1)
      return pal_arr[1]
    end 
    
    start = start + 1 
  end 
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_palindrome")
puts("===============================================")
    puts(
      'longest_palindrome("abcbd") == "bcb": ' +
      (longest_palindrome('abcbd') == 'bcb').to_s
    )
    puts(
      'longest_palindrome("abba") == "abba": ' +
      (longest_palindrome('abba') == 'abba').to_s
    )
    puts(
      'longest_palindrome("abcbdeffe") == "effe": ' +
      (longest_palindrome('abcbdeffe') == 'effe').to_s
    )
puts("===============================================")