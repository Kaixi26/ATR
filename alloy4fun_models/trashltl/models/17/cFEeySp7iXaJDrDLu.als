open main
pred idcFEeySp7iXaJDrDLu_prop18 {
	always (all f : Protected | f in Trash releases always f in Protected)
}
pred __repair { idcFEeySp7iXaJDrDLu_prop18 }
check __repair { idcFEeySp7iXaJDrDLu_prop18 <=> prop18o }