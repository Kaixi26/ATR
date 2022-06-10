open main
pred idbaLfa5utchAB5WMgd_prop8 {
    always (some f : File | some f.link implies after eventually f in Trash)
}
pred __repair { idbaLfa5utchAB5WMgd_prop8 }
check __repair { idbaLfa5utchAB5WMgd_prop8 <=> prop8o }