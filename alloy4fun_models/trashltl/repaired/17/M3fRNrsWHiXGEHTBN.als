open main
pred idM3fRNrsWHiXGEHTBN_prop18 {
	always (all f : File | f in Protected releases f in Trash)
}
pred __repair { idM3fRNrsWHiXGEHTBN_prop18 }
check __repair { idM3fRNrsWHiXGEHTBN_prop18 <=> prop18o }