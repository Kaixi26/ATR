open main
pred idxzoeJzjNRveTbGj5P_prop9 {
	
	  all t:Train | before no t.pos and eventually ( some t.pos & Entry)   
}
pred __repair { idxzoeJzjNRveTbGj5P_prop9 }
check __repair { idxzoeJzjNRveTbGj5P_prop9 <=> prop9o }