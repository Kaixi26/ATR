open main
pred iddsSSgZveiuyar8fg8_prop3 {
	
  always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos and t->tk not in pos implies always t->tk not in pos 
}
pred __repair { iddsSSgZveiuyar8fg8_prop3 }
check __repair { iddsSSgZveiuyar8fg8_prop3 <=> prop3o }