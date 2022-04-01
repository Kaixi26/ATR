open main
pred idcRBBJFx6jREpNF4vN_prop10 { 
	always all f:Protected | always f in Protected
}
pred __repair { idcRBBJFx6jREpNF4vN_prop10 }
check __repair { idcRBBJFx6jREpNF4vN_prop10 <=> prop10o }