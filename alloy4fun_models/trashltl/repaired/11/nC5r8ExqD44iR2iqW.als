open main
pred idnC5r8ExqD44iR2iqW_prop12 {
	always (all f:File | (eventually f in Trash) implies (always f in Trash)) 
}
pred __repair { idnC5r8ExqD44iR2iqW_prop12 }
check __repair { idnC5r8ExqD44iR2iqW_prop12 <=> prop12o }