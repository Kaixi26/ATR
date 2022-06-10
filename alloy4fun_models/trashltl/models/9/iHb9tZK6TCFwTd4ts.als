open main
pred idiHb9tZK6TCFwTd4ts_prop10 {
	
  always all f:File | f in Protected implies f in Protected
}
pred __repair { idiHb9tZK6TCFwTd4ts_prop10 }
check __repair { idiHb9tZK6TCFwTd4ts_prop10 <=> prop10o }