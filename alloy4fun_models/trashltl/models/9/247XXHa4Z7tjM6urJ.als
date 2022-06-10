open main
pred id247XXHa4Z7tjM6urJ_prop10 {
	always all f: Protected | once f in Protected
}
pred __repair { id247XXHa4Z7tjM6urJ_prop10 }
check __repair { id247XXHa4Z7tjM6urJ_prop10 <=> prop10o }