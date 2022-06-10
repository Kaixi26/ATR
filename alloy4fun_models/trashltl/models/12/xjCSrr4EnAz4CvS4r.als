open main
pred idxjCSrr4EnAz4CvS4r_prop13 {
	always all f: File | f in Trash implies before f not in Trash
}
pred __repair { idxjCSrr4EnAz4CvS4r_prop13 }
check __repair { idxjCSrr4EnAz4CvS4r_prop13 <=> prop13o }