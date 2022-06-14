open main
pred idQZ24K2j35LZSr7PxY_prop4 {
	
	all disj t1,t2:Train | some (t1.pos &t2.pos ) implies lone ((t1.pos &t2.pos ).signal &Green) or no (t1.pos &t2.pos )
}
pred __repair { idQZ24K2j35LZSr7PxY_prop4 }
check __repair { idQZ24K2j35LZSr7PxY_prop4 <=> prop4o }