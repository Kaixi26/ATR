open main
pred idHZ3rYSwov2evKq3Bc_prop10 { 
	always all f:Protected | always f in Protected'
}
pred __repair { idHZ3rYSwov2evKq3Bc_prop10 }
check __repair { idHZ3rYSwov2evKq3Bc_prop10 <=> prop10o }