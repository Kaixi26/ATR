open main
pred idZehDrgtuxgidriXfC_prop18 {
 
	always all f:Protected |  f not in Protected   releases  f in Trash
}
pred __repair { idZehDrgtuxgidriXfC_prop18 }
check __repair { idZehDrgtuxgidriXfC_prop18 <=> prop18o }