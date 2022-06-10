open main
pred idhbwc2frhtdJXNrmAy_prop5 {
	always some f : File | eventually f in Trash
}
pred __repair { idhbwc2frhtdJXNrmAy_prop5 }
check __repair { idhbwc2frhtdJXNrmAy_prop5 <=> prop5o }