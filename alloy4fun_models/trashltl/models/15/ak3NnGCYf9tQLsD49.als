open main
pred idak3NnGCYf9tQLsD49_prop16 {
	 all f:Protected |  always (after f in Protected)
}
pred __repair { idak3NnGCYf9tQLsD49_prop16 }
check __repair { idak3NnGCYf9tQLsD49_prop16 <=> prop16o }