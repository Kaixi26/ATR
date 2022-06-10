open main
pred id6fwqaSuG54vur3nSv_prop19 {
	always all p: Protected | eventually p in Protected until p in Trash

}
pred __repair { id6fwqaSuG54vur3nSv_prop19 }
check __repair { id6fwqaSuG54vur3nSv_prop19 <=> prop19o }