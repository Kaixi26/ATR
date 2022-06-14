open main
pred idX78bRqsMQDyKHLPtz_prop2 {
	
	all g : Signal |always( eventually g = Green )
}
pred __repair { idX78bRqsMQDyKHLPtz_prop2 }
check __repair { idX78bRqsMQDyKHLPtz_prop2 <=> prop2o }