open main
pred idsDTGqACYWMcwiBASJ_prop10 {
	always all p: File | once p in Protected implies always p in Protected  
}
pred __repair { idsDTGqACYWMcwiBASJ_prop10 }
check __repair { idsDTGqACYWMcwiBASJ_prop10 <=> prop10o }