open main
pred iddoDdGzeaEpHfkDXqd_prop12 {
	 always (some f:File | (eventually f in Trash) implies (always f in Trash))
}
pred __repair { iddoDdGzeaEpHfkDXqd_prop12 }
check __repair { iddoDdGzeaEpHfkDXqd_prop12 <=> prop12o }