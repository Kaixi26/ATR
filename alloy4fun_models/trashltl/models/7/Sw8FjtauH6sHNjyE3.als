open main
pred idSw8FjtauH6sHNjyE3_prop8 {
	always (some f: File | f in link.File implies eventually f in Trash)
}
pred __repair { idSw8FjtauH6sHNjyE3_prop8 }
check __repair { idSw8FjtauH6sHNjyE3_prop8 <=> prop8o }