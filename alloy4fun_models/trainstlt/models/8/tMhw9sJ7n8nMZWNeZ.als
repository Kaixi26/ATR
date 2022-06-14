open main
pred idtMhw9sJ7n8nMZWNeZ_prop9 {
	
    always (all t:Train|  (no t.pos =>  one (t.pos':>Entry)) )
	 
}
pred __repair { idtMhw9sJ7n8nMZWNeZ_prop9 }
check __repair { idtMhw9sJ7n8nMZWNeZ_prop9 <=> prop9o }