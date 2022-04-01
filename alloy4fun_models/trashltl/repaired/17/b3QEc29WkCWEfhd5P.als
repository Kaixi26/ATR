open main
pred idb3QEc29WkCWEfhd5P_prop18 {
 
	always (all f:Protected |  f in Trash  releases f not in Protected' )
}
pred __repair { idb3QEc29WkCWEfhd5P_prop18 }
check __repair { idb3QEc29WkCWEfhd5P_prop18 <=> prop18o }