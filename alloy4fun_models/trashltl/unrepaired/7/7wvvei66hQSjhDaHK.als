open main
pred id7wvvei66hQSjhDaHK_prop8 {
	all l : File.link | eventually l in Trash
}
pred __repair { id7wvvei66hQSjhDaHK_prop8 }
check __repair { id7wvvei66hQSjhDaHK_prop8 <=> prop8o }