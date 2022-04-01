open main
pred iddTRj8PZQWedg4GGmR_prop6 {
	all f: File | once f in Trash implies always f in Trash
}
pred __repair { iddTRj8PZQWedg4GGmR_prop6 }
check __repair { iddTRj8PZQWedg4GGmR_prop6 <=> prop6o }