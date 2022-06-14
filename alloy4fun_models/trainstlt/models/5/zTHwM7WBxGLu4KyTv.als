open main
pred idzTHwM7WBxGLu4KyTv_prop6 {
	
  	always all s : Signal {
  		((s in Green) implies (eventually s not in Green))
      	or
      	((s not in Green) implies (eventually s in Green))
  	}
}
pred __repair { idzTHwM7WBxGLu4KyTv_prop6 }
check __repair { idzTHwM7WBxGLu4KyTv_prop6 <=> prop6o }