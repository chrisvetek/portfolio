def dasherize_number(num)
    s = num.to_s
  idx = 0
  new = ''
  
  while(idx < s.length)
	
    if(idx == 0)
	
		if(s[idx].to_i % 2 == 0)
			new = new + s[idx]
			idx = idx + 1
		else 
			new = new + s[idx] + '-'
			idx = idx + 1
		end 
		
	end 
	
	if((s[idx].to_i % 2 == 0) && (idx < s.length-1))
		new = new + s[idx]
	end 
	
	if((s[idx].to_i % 2 !=0) && (idx < s.length-1))
	  if(s[idx-1].to_i % 2 !=0)
	    new = new + s[idx] + '-'
	  else
		  new = new + '-' + s[idx] + '-'
  	end 
  	idx = idx + 1
	end 
	
	if(idx == s.length-1)
		if(s[idx].to_i % 2 != 0)
		  if(s[idx-1].to_i % 2 !=0)
	      new = new + s[idx]
	      break
	    end 
			new =  new + '-' + s[idx]
			break
		else 
			new = new + s[idx]
			break
		end
    end 
	idx = idx + 1
  end 
  
  puts(new)
  return new
end

dasherize_number(203)
dasherize_number(303)
dasherize_number(3033)
