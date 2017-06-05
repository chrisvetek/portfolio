def reverse(string)
  new_string = ""
  if string.length == 0 
    return string
  end
  else 
  	i = string.length - 1
  	while(i>=0)
  		new_string = new_string + string[i]
  		if(i==0)
  			puts(new_string)
  			return new_string
  		end
  		i = i - 1
  	end
end

reverse("Gizmo")