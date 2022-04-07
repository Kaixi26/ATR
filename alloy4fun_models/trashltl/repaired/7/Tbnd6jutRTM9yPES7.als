open main
pred idTbnd6jutRTM9yPES7_prop8 {
all f1,f2 : File | f1->f2 in link implies eventually f2 in Trash
}
pred __repair { idTbnd6jutRTM9yPES7_prop8 }
check __repair { idTbnd6jutRTM9yPES7_prop8 <=> prop8o }