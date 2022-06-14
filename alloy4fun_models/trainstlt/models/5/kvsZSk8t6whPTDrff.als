open main
pred idkvsZSk8t6whPTDrff_prop6 {
	
	always (all s : Signal | s in Green implies eventually s not in Green or 
  		   		s not in Green implies eventually s in Green)
}
pred __repair { idkvsZSk8t6whPTDrff_prop6 }
check __repair { idkvsZSk8t6whPTDrff_prop6 <=> prop6o }