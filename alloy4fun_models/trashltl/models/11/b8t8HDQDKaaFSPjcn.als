open main
pred idb8t8HDQDKaaFSPjcn_prop12 {
	some f : File | eventually f in Trash => eventually f in Trash
}
pred __repair { idb8t8HDQDKaaFSPjcn_prop12 }
check __repair { idb8t8HDQDKaaFSPjcn_prop12 <=> prop12o }