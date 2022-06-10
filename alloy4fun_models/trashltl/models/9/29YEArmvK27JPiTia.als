open main
pred id29YEArmvK27JPiTia_prop10 {
	always (all f:Protected | always f in Protected)
}
pred __repair { id29YEArmvK27JPiTia_prop10 }
check __repair { id29YEArmvK27JPiTia_prop10 <=> prop10o }