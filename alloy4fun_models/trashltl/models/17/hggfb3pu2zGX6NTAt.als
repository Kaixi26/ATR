open main
pred idhggfb3pu2zGX6NTAt_prop18 {
	all f:Protected | eventually f in Trash implies f not in Protected
}
pred __repair { idhggfb3pu2zGX6NTAt_prop18 }
check __repair { idhggfb3pu2zGX6NTAt_prop18 <=> prop18o }