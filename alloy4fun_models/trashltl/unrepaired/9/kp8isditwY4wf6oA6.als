open main
pred idkp8isditwY4wf6oA6_prop10 {
	all f : File | f in Protected implies always f in Protected
}
pred __repair { idkp8isditwY4wf6oA6_prop10 }
check __repair { idkp8isditwY4wf6oA6_prop10 <=> prop10o }