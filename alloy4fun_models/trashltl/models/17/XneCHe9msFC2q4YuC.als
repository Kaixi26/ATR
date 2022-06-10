open main
pred idXneCHe9msFC2q4YuC_prop18 {
	all f : Protected | always (f in Trash' => always (f not in Protected'))
}
pred __repair { idXneCHe9msFC2q4YuC_prop18 }
check __repair { idXneCHe9msFC2q4YuC_prop18 <=> prop18o }