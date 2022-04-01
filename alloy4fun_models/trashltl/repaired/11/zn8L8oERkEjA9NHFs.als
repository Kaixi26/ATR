open main
pred idzn8L8oERkEjA9NHFs_prop12 {
	always some f : File | eventually f in Trash implies always f in Trash
}
pred __repair { idzn8L8oERkEjA9NHFs_prop12 }
check __repair { idzn8L8oERkEjA9NHFs_prop12 <=> prop12o }