def count_vowels(string)
	idx = 0
	count = 0
	while(idx <string.length)
		if((string[idx]=='a')||(string[idx]=='e')||(string[idx]=='o')||(string[idx]=='i')||(string[idx]=='u'))
			count = count + 1
			end
		idx = idx + 1
	end
	puts(count)
	return count
end

count_vowels("basketball")