open main
pred idB6T789diHuTuDpwwD_prop10 {
	all f : File | f in Protected => always f in Protected 
}
pred __repair { idB6T789diHuTuDpwwD_prop10 }
check __repair { idB6T789diHuTuDpwwD_prop10 <=> prop10o }