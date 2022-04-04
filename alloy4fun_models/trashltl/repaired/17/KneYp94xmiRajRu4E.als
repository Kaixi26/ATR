open main
pred idKneYp94xmiRajRu4E_prop18 {
	always all f: File | (f in Trash releases f in Protected)
}
pred __repair { idKneYp94xmiRajRu4E_prop18 }
check __repair { idKneYp94xmiRajRu4E_prop18 <=> prop18o }