open main
pred idXyigaKNhmDA4b6tc7_prop6 {
	one f: File | f in Trash implies always (f in Trash) 
}
pred __repair { idXyigaKNhmDA4b6tc7_prop6 }
check __repair { idXyigaKNhmDA4b6tc7_prop6 <=> prop6o }