open main
pred idpTXL6Dsz2YHLe2zoa_prop18 {
	all f : Protected | always (f in Trash' => f not in Protected' or f in Trash => f not in Protected)
}
pred __repair { idpTXL6Dsz2YHLe2zoa_prop18 }
check __repair { idpTXL6Dsz2YHLe2zoa_prop18 <=> prop18o }