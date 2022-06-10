open main
pred idQquBpcutGB87jEtfJ_prop12 {
	some f : File | eventually f in Trash => always f in Trash
}
pred __repair { idQquBpcutGB87jEtfJ_prop12 }
check __repair { idQquBpcutGB87jEtfJ_prop12 <=> prop12o }