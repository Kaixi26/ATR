open main
pred idajEi3RXqyWsqkPgv2_prop8 {
	always (all f:File.^link| some f implies  eventually  f  in Trash)

}
pred __repair { idajEi3RXqyWsqkPgv2_prop8 }
check __repair { idajEi3RXqyWsqkPgv2_prop8 <=> prop8o }