open main
pred idptZgT2jt4qfDSoWzk_prop12 {
	one f : File |always( eventually f in Trash)
}
pred __repair { idptZgT2jt4qfDSoWzk_prop12 }
check __repair { idptZgT2jt4qfDSoWzk_prop12 <=> prop12o }