open main
pred idCw449rpXoY8sAuJZB_prop14 {
    always (some f : Protected | f in Trash implies f not in Protected')
}
pred __repair { idCw449rpXoY8sAuJZB_prop14 }
check __repair { idCw449rpXoY8sAuJZB_prop14 <=> prop14o }