open main
pred id7MXipM8AGzSRAWwPq_prop5 {
	all f : File | eventually f not in File 
}
pred __repair { id7MXipM8AGzSRAWwPq_prop5 }
check __repair { id7MXipM8AGzSRAWwPq_prop5 <=> prop5o }