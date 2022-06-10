open main
pred idZWfXE7jqxog4wkPky_prop10 {
	always all f : File | f in Protected implies f in Protected'
}
pred __repair { idZWfXE7jqxog4wkPky_prop10 }
check __repair { idZWfXE7jqxog4wkPky_prop10 <=> prop10o }