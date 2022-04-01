open main
pred idaf8GCrgtcdxBB2uts_prop7 {
	some f: (File - Protected) | eventually f in Protected
}
pred __repair { idaf8GCrgtcdxBB2uts_prop7 }
check __repair { idaf8GCrgtcdxBB2uts_prop7 <=> prop7o }