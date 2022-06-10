open main
pred idzt4DjjPTMRdFLgLhA_prop18 {
	always all f: File | always f not in Protected releases f in Trash
}
pred __repair { idzt4DjjPTMRdFLgLhA_prop18 }
check __repair { idzt4DjjPTMRdFLgLhA_prop18 <=> prop18o }