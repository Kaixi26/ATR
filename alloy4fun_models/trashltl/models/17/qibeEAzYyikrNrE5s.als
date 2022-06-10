open main
pred idqibeEAzYyikrNrE5s_prop18 {
	all f : Protected | always (f not in Protected since f in Trash)
}
pred __repair { idqibeEAzYyikrNrE5s_prop18 }
check __repair { idqibeEAzYyikrNrE5s_prop18 <=> prop18o }