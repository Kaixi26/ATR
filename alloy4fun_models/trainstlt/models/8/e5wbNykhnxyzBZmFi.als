open main
pred ide5wbNykhnxyzBZmFi_prop9 {
	
	  all t:Train |  eventually ( some t.pos & Entry)  and before no t.pos
}
pred __repair { ide5wbNykhnxyzBZmFi_prop9 }
check __repair { ide5wbNykhnxyzBZmFi_prop9 <=> prop9o }