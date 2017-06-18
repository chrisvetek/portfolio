def nearby_az(string)
  
idx = 0
point = 0

while(idx < string.length)
  if(string[idx] == 'a')
    point = idx
  end
  idx = idx + 1 
end

idx = 0
target = 0
while(idx < string.length)
  if(string[idx] == 'z')
    target = idx
  end
  idx = idx + 1
end

if(target > point)
  if(target - point <= 3)
    return true
  end
end

return false

end