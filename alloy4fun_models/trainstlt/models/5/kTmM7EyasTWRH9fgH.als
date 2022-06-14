open main
pred idkTmM7EyasTWRH9fgH_prop6 {
	
	all s: Signal | always s != s'
}
pred __repair { idkTmM7EyasTWRH9fgH_prop6 }
check __repair { idkTmM7EyasTWRH9fgH_prop6 <=> prop6o }