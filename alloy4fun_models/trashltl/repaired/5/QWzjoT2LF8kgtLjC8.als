open main
pred idQWzjoT2LF8kgtLjC8_prop6 {
	all f:File | f in Trash implies (always f in Trash)
}
pred __repair { idQWzjoT2LF8kgtLjC8_prop6 }
check __repair { idQWzjoT2LF8kgtLjC8_prop6 <=> prop6o }