open main
pred idmSNeMfC2DhkG3qnE5_prop18 {
	all f: File | (f in Protected until f in Trash)
}
pred __repair { idmSNeMfC2DhkG3qnE5_prop18 }
check __repair { idmSNeMfC2DhkG3qnE5_prop18 <=> prop18o }