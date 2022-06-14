open main
pred idyjdZARGd6WpKLE8eQ_prop9 {
	
	all t:Train | some tk:Entry | (t->tk not in pos) implies eventually (t->tk in pos)
}
pred __repair { idyjdZARGd6WpKLE8eQ_prop9 }
check __repair { idyjdZARGd6WpKLE8eQ_prop9 <=> prop9o }