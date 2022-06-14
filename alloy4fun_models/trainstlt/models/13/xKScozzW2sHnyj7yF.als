open main
pred idxKScozzW2sHnyj7yF_prop14 {
	
	 ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies after (t.pos.signal in  Signal-Green) )

}
pred __repair { idxKScozzW2sHnyj7yF_prop14 }
check __repair { idxKScozzW2sHnyj7yF_prop14 <=> prop14o }