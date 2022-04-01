open main
pred idpRGxMDeRBzguw9Zvx_prop18 {
 	all f:Protected | after f not in Protected implies f in Trash
}
pred __repair { idpRGxMDeRBzguw9Zvx_prop18 }
check __repair { idpRGxMDeRBzguw9Zvx_prop18 <=> prop18o }