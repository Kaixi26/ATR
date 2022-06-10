open main
pred idzunhSHoSJYcNCon58_prop12 {
	 some f:File | f not in Trash implies f in Trash'
}
pred __repair { idzunhSHoSJYcNCon58_prop12 }
check __repair { idzunhSHoSJYcNCon58_prop12 <=> prop12o }