open main
pred idcKsBePAbfHbmn7qZh_prop10 {
	always all f : File | f in Protected implies after f in Protected
}
pred __repair { idcKsBePAbfHbmn7qZh_prop10 }
check __repair { idcKsBePAbfHbmn7qZh_prop10 <=> prop10o }