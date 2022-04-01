open main
pred idmZ8T6roAcgNZDzvwu_prop18 {
	always all f: File | (f in Trash releases f not in Protected)
}
pred __repair { idmZ8T6roAcgNZDzvwu_prop18 }
check __repair { idmZ8T6roAcgNZDzvwu_prop18 <=> prop18o }