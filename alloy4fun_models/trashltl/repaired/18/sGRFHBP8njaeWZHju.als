open main
pred idsGRFHBP8njaeWZHju_prop19 {
	all f : File | (f in Protected) until (f in Trash)
}
pred __repair { idsGRFHBP8njaeWZHju_prop19 }
check __repair { idsGRFHBP8njaeWZHju_prop19 <=> prop19o }