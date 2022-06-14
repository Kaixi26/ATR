open main
pred idvTvARtag9knJyeMGo_prop9 {
	
	  all t:Train | t.pos not in Entry implies before no t.pos and eventually ( some t.pos & Entry)   
}
pred __repair { idvTvARtag9knJyeMGo_prop9 }
check __repair { idvTvARtag9knJyeMGo_prop9 <=> prop9o }