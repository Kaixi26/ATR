open main
pred idsLnFq4vPWpWbanQRQ_prop18 {
	all f : Protected | always (f in Trash' => f not in Protected')
}
pred __repair { idsLnFq4vPWpWbanQRQ_prop18 }
check __repair { idsLnFq4vPWpWbanQRQ_prop18 <=> prop18o }