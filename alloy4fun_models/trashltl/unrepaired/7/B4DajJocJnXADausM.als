open main
pred idB4DajJocJnXADausM_prop8 {
	all f:File | some link.f implies eventually ( f in Trash)
}
pred __repair { idB4DajJocJnXADausM_prop8 }
check __repair { idB4DajJocJnXADausM_prop8 <=> prop8o }