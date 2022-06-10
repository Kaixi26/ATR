open main
pred idhcDi7SdwdLJPfSaFi_prop5 {
  some f: File | f not in Trash and eventually f in Trash
}
pred __repair { idhcDi7SdwdLJPfSaFi_prop5 }
check __repair { idhcDi7SdwdLJPfSaFi_prop5 <=> prop5o }