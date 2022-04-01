open main
pred idgTE497MKY9Aq63au8_prop12 {
	eventually some f : File | eventually f in Trash => after f not in Trash 
}
pred __repair { idgTE497MKY9Aq63au8_prop12 }
check __repair { idgTE497MKY9Aq63au8_prop12 <=> prop12o }