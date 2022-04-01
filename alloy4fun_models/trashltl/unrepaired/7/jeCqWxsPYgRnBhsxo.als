open main
pred idjeCqWxsPYgRnBhsxo_prop8 {
all f1,f2 : File | f1->f2 in link implies eventually f2 in Trash
}
pred __repair { idjeCqWxsPYgRnBhsxo_prop8 }
check __repair { idjeCqWxsPYgRnBhsxo_prop8 <=> prop8o }