open main
pred idQRbF5fhYA6nB4YMCb_prop10 {
	all f:File | always (f in Protected implies (always f in Protected))
}
pred __repair { idQRbF5fhYA6nB4YMCb_prop10 }
check __repair { idQRbF5fhYA6nB4YMCb_prop10 <=> prop10o }