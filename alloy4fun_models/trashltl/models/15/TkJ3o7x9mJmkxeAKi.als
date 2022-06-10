open main
pred idTkJ3o7x9mJmkxeAKi_prop16 {
	all f: File | always (eventually f in Protected implies historically f in Protected)
}
pred __repair { idTkJ3o7x9mJmkxeAKi_prop16 }
check __repair { idTkJ3o7x9mJmkxeAKi_prop16 <=> prop16o }