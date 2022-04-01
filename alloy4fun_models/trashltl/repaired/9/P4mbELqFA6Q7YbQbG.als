open main
pred idP4mbELqFA6Q7YbQbG_prop10 {
	always (all f:Protected | always f in Protected)
}
pred __repair { idP4mbELqFA6Q7YbQbG_prop10 }
check __repair { idP4mbELqFA6Q7YbQbG_prop10 <=> prop10o }