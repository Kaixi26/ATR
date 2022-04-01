open main
pred idaq7YSWZNinH2o2xWh_prop6 {
	all f:File|f in Trash implies always f in Trash 
}
pred __repair { idaq7YSWZNinH2o2xWh_prop6 }
check __repair { idaq7YSWZNinH2o2xWh_prop6 <=> prop6o }