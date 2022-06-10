open main
pred idd95FTPaYmvChpJYGW_prop12 {
	eventually some f: File | f in Trash implies always f in Trash
}
pred __repair { idd95FTPaYmvChpJYGW_prop12 }
check __repair { idd95FTPaYmvChpJYGW_prop12 <=> prop12o }