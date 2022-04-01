open main
pred idRm86ecJMyrEqSEAQB_prop5 {
	some f:File | (eventually f in Trash)
}
pred __repair { idRm86ecJMyrEqSEAQB_prop5 }
check __repair { idRm86ecJMyrEqSEAQB_prop5 <=> prop5o }