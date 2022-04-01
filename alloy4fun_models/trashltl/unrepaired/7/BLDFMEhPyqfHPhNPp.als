open main
pred idBLDFMEhPyqfHPhNPp_prop8 {
all f1,f2 : File | f1->f2 in link implies eventually f2 in Trash
}
pred __repair { idBLDFMEhPyqfHPhNPp_prop8 }
check __repair { idBLDFMEhPyqfHPhNPp_prop8 <=> prop8o }