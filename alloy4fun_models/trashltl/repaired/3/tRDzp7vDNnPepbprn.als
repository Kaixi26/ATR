open main
pred idtRDzp7vDNnPepbprn_prop4 {
	some f:File | eventually f in Trash
}
pred __repair { idtRDzp7vDNnPepbprn_prop4 }
check __repair { idtRDzp7vDNnPepbprn_prop4 <=> prop4o }