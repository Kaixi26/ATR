open main
pred idSirsmXbin9ahmY65c_prop18 {
	always (all f:Protected | f in Trash-Protected triggered f not in Protected)
}
pred __repair { idSirsmXbin9ahmY65c_prop18 }
check __repair { idSirsmXbin9ahmY65c_prop18 <=> prop18o }