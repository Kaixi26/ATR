open main
pred idAkbr9Aq6WfBLHrvE8_prop19 {
	always (all f : File | f in Protected until f in Trash)
}
pred __repair { idAkbr9Aq6WfBLHrvE8_prop19 }
check __repair { idAkbr9Aq6WfBLHrvE8_prop19 <=> prop19o }