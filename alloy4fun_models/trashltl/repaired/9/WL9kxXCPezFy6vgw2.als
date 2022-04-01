open main
pred idWL9kxXCPezFy6vgw2_prop10 {
	all f:File | always (f in Protected) since f in Protected
}
pred __repair { idWL9kxXCPezFy6vgw2_prop10 }
check __repair { idWL9kxXCPezFy6vgw2_prop10 <=> prop10o }