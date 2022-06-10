open main
pred ideBeoahi6whmX3JhuF_prop5 {
  some f: File | f not in Trash and eventually f in Trash
}
pred __repair { ideBeoahi6whmX3JhuF_prop5 }
check __repair { ideBeoahi6whmX3JhuF_prop5 <=> prop5o }