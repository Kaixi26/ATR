open main
pred idkAy37bB27mKoMKjEH_prop8 {
  	all f:File | eventually f.link in Trash
  	
	
}
pred __repair { idkAy37bB27mKoMKjEH_prop8 }
check __repair { idkAy37bB27mKoMKjEH_prop8 <=> prop8o }