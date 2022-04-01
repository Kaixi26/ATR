open main
pred idNcFptEEuyYZLxgC2B_prop18 {
	always(all f:File&Protected | f in Trash implies f not in Protected) 
}
pred __repair { idNcFptEEuyYZLxgC2B_prop18 }
check __repair { idNcFptEEuyYZLxgC2B_prop18 <=> prop18o }