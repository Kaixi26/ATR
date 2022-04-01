open main
pred idzF28rZhit5fJLS4FB_prop14 {
  	all p: (Protected & Trash) | after p not in Protected
}
pred __repair { idzF28rZhit5fJLS4FB_prop14 }
check __repair { idzF28rZhit5fJLS4FB_prop14 <=> prop14o }