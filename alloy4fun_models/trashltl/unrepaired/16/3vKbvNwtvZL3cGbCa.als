open main
pred id3vKbvNwtvZL3cGbCa_prop17 {
	all f : File | f in Trash implies f not in File
}
pred __repair { id3vKbvNwtvZL3cGbCa_prop17 }
check __repair { id3vKbvNwtvZL3cGbCa_prop17 <=> prop17o }