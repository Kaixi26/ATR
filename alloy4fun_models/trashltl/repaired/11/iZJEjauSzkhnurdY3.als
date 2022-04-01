open main
pred idiZJEjauSzkhnurdY3_prop12 {
	eventually (always some f:File | (f not in Trash and f not in Protected ) implies f in Trash')
}
pred __repair { idiZJEjauSzkhnurdY3_prop12 }
check __repair { idiZJEjauSzkhnurdY3_prop12 <=> prop12o }