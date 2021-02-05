def halloween_sale p, d, m, s
	if(s < p)
		return 0
	end
	#arithmetic progression
	last_n = (((m - p)/d.to_f * (-1)) + 1)

	unless last_n === last_n.ceil
		last_n = last_n.floor
	end

	an = p + (last_n - 1) * (d * -1)
	
	# arithmetic progression sum of terms
	sum = ((p + an) * last_n) / 2 

	if sum > s
		number_of_games = sum / s
	else
		number_of_games = ((p - m) / d) + 1
		number_of_games = number_of_games + ((s - sum) / m)
	end

	number_of_games = number_of_games.floor

	return number_of_games
end