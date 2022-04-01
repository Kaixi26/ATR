open main
pred idu7DB6TczHkKo8XBZC_prop6 {
	all f : File | always f in Trash since f not in Trash
}
pred __repair { idu7DB6TczHkKo8XBZC_prop6 }
check __repair { idu7DB6TczHkKo8XBZC_prop6 <=> prop6o }