def time_conversion(minutes)
	t = ""
	separator = ":"
	hours = (minutes / 60).to_s
	new_minutes = (minutes % 60).to_s
	if(new_minutes.length == 1)
		new_minutes = "0" + new_minutes
		end
	t = hours + separator + new_minutes
	puts(t)
	return t
end

time_conversion(360)