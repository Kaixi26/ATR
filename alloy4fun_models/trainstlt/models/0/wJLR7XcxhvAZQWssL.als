open main
pred idwJLR7XcxhvAZQWssL_prop1 {
	
	always (all t:Track&Entry | Green not in t.signal)
}
pred __repair { idwJLR7XcxhvAZQWssL_prop1 }
check __repair { idwJLR7XcxhvAZQWssL_prop1 <=> prop1o }