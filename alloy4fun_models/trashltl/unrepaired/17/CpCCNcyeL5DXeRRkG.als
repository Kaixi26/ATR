open main
pred idCpCCNcyeL5DXeRRkG_prop18 {
	all p:Protected | p in File - Protected implies p in Trash
}
pred __repair { idCpCCNcyeL5DXeRRkG_prop18 }
check __repair { idCpCCNcyeL5DXeRRkG_prop18 <=> prop18o }