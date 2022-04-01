open main
pred idK3ZictQmYZuX79aB3_prop17 {
	always (some f:Trash | after no Trash&f)
}
pred __repair { idK3ZictQmYZuX79aB3_prop17 }
check __repair { idK3ZictQmYZuX79aB3_prop17 <=> prop17o }