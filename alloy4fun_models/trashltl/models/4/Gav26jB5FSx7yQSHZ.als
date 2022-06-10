open main
pred idGav26jB5FSx7yQSHZ_prop5 {
	all f : File | always eventually f not in File + Protected + Trash
}
pred __repair { idGav26jB5FSx7yQSHZ_prop5 }
check __repair { idGav26jB5FSx7yQSHZ_prop5 <=> prop5o }