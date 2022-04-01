open main
pred idbeL3NDPugdLpzuTyX_prop18 {
    always all f : Protected | f not in Protected' implies f in Trash'
}
pred __repair { idbeL3NDPugdLpzuTyX_prop18 }
check __repair { idbeL3NDPugdLpzuTyX_prop18 <=> prop18o }