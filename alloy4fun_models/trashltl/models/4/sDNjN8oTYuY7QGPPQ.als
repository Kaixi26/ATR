open main
pred idsDNjN8oTYuY7QGPPQ_prop5 {
	some f: File | eventually (f not in (File + Trash + Protected))
}
pred __repair { idsDNjN8oTYuY7QGPPQ_prop5 }
check __repair { idsDNjN8oTYuY7QGPPQ_prop5 <=> prop5o }