def halloween_sale p, d, m, s

	return 0 if(s < p)

	#arithmetic progression
	last_n = (((m - p)/d.to_f * (-1)) + 1)

	unless last_n === last_n.ceil
		last_n = last_n.floor
	end

	an = p + (last_n - 1) * (d * -1)

	# arithmetic progression sum of terms
	sum = ((p + an) * last_n) / 2 

	number_of_games = if sum > s
					 sum / s
					else
						((p - m) / d) + 1 + ((s - sum) / m)
					end

	number_of_games.floor
end