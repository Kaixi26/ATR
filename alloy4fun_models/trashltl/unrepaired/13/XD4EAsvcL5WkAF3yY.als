open main
pred idXD4EAsvcL5WkAF3yY_prop14 {
	always (all f : Trash | always (after f not in Protected))
}
pred __repair { idXD4EAsvcL5WkAF3yY_prop14 }
check __repair { idXD4EAsvcL5WkAF3yY_prop14 <=> prop14o }