open main
pred idkJ8JRptcLyXTnfFA5_prop10 {
	always all f:Protected | always f in Protected
}
pred __repair { idkJ8JRptcLyXTnfFA5_prop10 }
check __repair { idkJ8JRptcLyXTnfFA5_prop10 <=> prop10o }