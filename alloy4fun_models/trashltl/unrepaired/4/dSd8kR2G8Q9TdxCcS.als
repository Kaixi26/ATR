open main
pred iddSd8kR2G8Q9TdxCcS_prop5 {
	always some f : Trash | eventually f not in File
}
pred __repair { iddSd8kR2G8Q9TdxCcS_prop5 }
check __repair { iddSd8kR2G8Q9TdxCcS_prop5 <=> prop5o }