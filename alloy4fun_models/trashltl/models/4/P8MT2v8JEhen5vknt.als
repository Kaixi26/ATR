open main
pred idP8MT2v8JEhen5vknt_prop5 {
	always some f : File | eventually f not in File
}
pred __repair { idP8MT2v8JEhen5vknt_prop5 }
check __repair { idP8MT2v8JEhen5vknt_prop5 <=> prop5o }