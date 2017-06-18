def longest_word(sentence)
	arr = sentence.split(" ")
	i = 0
	word = ""
	while ( i < arr.length )
		if( arr[i].length > arr[i-1].length ) 
			word = arr[i]
		else 
			word = arr[i-1]
		end
		i = i + 1
	end
	return word
end

longest_word("a test")