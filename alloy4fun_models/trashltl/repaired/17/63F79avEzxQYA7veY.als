open main
pred id63F79avEzxQYA7veY_prop18 {
	always (all f : Protected | f not in Protected implies f in Trash)
}
pred __repair { id63F79avEzxQYA7veY_prop18 }
check __repair { id63F79avEzxQYA7veY_prop18 <=> prop18o }