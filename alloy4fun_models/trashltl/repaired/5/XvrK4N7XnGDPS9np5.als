open main
pred idXvrK4N7XnGDPS9np5_prop6 {
	all f : File | f in Trash => always f in Trash	
}
pred __repair { idXvrK4N7XnGDPS9np5_prop6 }
check __repair { idXvrK4N7XnGDPS9np5_prop6 <=> prop6o }