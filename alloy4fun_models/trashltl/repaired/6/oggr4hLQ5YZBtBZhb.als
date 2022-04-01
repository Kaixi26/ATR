open main
pred idoggr4hLQ5YZBtBZhb_prop7 {
	some f: File | f in File implies eventually f' in Protected
}
pred __repair { idoggr4hLQ5YZBtBZhb_prop7 }
check __repair { idoggr4hLQ5YZBtBZhb_prop7 <=> prop7o }