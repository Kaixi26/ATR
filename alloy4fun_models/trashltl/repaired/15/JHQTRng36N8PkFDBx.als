open main
pred idJHQTRng36N8PkFDBx_prop16 {
	all f: File | once f in Protected implies always f in Protected
}
pred __repair { idJHQTRng36N8PkFDBx_prop16 }
check __repair { idJHQTRng36N8PkFDBx_prop16 <=> prop16o }