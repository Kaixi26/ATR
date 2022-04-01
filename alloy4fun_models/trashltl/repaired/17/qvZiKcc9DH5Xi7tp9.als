open main
pred idqvZiKcc9DH5Xi7tp9_prop18 {
	always (all f : Protected | f not in Protected implies before f in Trash)
}
pred __repair { idqvZiKcc9DH5Xi7tp9_prop18 }
check __repair { idqvZiKcc9DH5Xi7tp9_prop18 <=> prop18o }