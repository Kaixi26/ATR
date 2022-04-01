open main
pred idgSkCbMwgkcwhp6hBZ_prop6 {
 	eventually some f:File | f in Trash implies always f in Trash'
}
pred __repair { idgSkCbMwgkcwhp6hBZ_prop6 }
check __repair { idgSkCbMwgkcwhp6hBZ_prop6 <=> prop6o }