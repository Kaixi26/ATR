open main
pred idouGMhazjAtaXbmEXi_prop18 {
	all p: Protected | p in Protected until p in Trash
}
pred __repair { idouGMhazjAtaXbmEXi_prop18 }
check __repair { idouGMhazjAtaXbmEXi_prop18 <=> prop18o }