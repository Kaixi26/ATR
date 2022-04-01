open main
pred idiyLCJB6zbFeCxG8Av_prop5 {
	always (some f:File | f not in File')
}
pred __repair { idiyLCJB6zbFeCxG8Av_prop5 }
check __repair { idiyLCJB6zbFeCxG8Av_prop5 <=> prop5o }