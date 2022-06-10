open main
pred idM4APH3qafDXoTpHKd_prop20 {
    always all f : File | f in Trash since f not in Protected
}
pred __repair { idM4APH3qafDXoTpHKd_prop20 }
check __repair { idM4APH3qafDXoTpHKd_prop20 <=> prop20o }