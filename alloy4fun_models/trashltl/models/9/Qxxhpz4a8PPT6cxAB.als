open main
pred idQxxhpz4a8PPT6cxAB_prop10 { 
	always all f:File | f in Protected implies always f in Protected
}
pred __repair { idQxxhpz4a8PPT6cxAB_prop10 }
check __repair { idQxxhpz4a8PPT6cxAB_prop10 <=> prop10o }