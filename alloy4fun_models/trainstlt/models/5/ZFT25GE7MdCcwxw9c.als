open main
pred idZFT25GE7MdCcwxw9c_prop6 {
	
	always (all  s : Signal |  no (s & Green) implies s'  in  Green else s' not in Green)
}
pred __repair { idZFT25GE7MdCcwxw9c_prop6 }
check __repair { idZFT25GE7MdCcwxw9c_prop6 <=> prop6o }