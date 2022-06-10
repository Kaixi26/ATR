open main
pred idjKRBReGEM8z5GNuwX_prop10 {
  	always all f:File | f in Protected implies after always f in Protected
	
}
pred __repair { idjKRBReGEM8z5GNuwX_prop10 }
check __repair { idjKRBReGEM8z5GNuwX_prop10 <=> prop10o }