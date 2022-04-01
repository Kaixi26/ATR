open main
pred idc5JRBQLeKP9oYTWzw_prop18 {
	always (all f : File | f in Protected triggered f in Trash)
}
pred __repair { idc5JRBQLeKP9oYTWzw_prop18 }
check __repair { idc5JRBQLeKP9oYTWzw_prop18 <=> prop18o }