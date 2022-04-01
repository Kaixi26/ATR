open main
pred idyzRDXBSyYFmEYwtrq_prop5 {
 	some f: File | eventually always f not in File since f in Trash
}
pred __repair { idyzRDXBSyYFmEYwtrq_prop5 }
check __repair { idyzRDXBSyYFmEYwtrq_prop5 <=> prop5o }