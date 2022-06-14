open main
pred idm8poMmu2CCJuHP2dX_prop6 {
	
  	always all s : Signal {
  		((s in Green) implies (eventually s not in Green))
      	or
      	((s not in Green) implies (eventually s in Green))
  	}
}
pred __repair { idm8poMmu2CCJuHP2dX_prop6 }
check __repair { idm8poMmu2CCJuHP2dX_prop6 <=> prop6o }