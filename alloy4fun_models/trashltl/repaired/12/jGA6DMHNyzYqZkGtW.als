open main
pred idjGA6DMHNyzYqZkGtW_prop13 {
	some f : File | always f in Trash implies once f not in Trash
}
pred __repair { idjGA6DMHNyzYqZkGtW_prop13 }
check __repair { idjGA6DMHNyzYqZkGtW_prop13 <=> prop13o }