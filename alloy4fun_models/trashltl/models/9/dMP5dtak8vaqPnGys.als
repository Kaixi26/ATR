open main
pred iddMP5dtak8vaqPnGys_prop10 {
	all f:File&Protected | always after f in Protected
}
pred __repair { iddMP5dtak8vaqPnGys_prop10 }
check __repair { iddMP5dtak8vaqPnGys_prop10 <=> prop10o }