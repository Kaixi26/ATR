open main
pred idmNFrGSj23rpZuzpnS_prop10 {
	always (all f:Protected | always f in Protected)
}
pred __repair { idmNFrGSj23rpZuzpnS_prop10 }
check __repair { idmNFrGSj23rpZuzpnS_prop10 <=> prop10o }