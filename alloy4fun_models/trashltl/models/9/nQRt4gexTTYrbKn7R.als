open main
pred idnQRt4gexTTYrbKn7R_prop10 {
  always all f: File | always (once f in Protected implies always f in Protected)
}
pred __repair { idnQRt4gexTTYrbKn7R_prop10 }
check __repair { idnQRt4gexTTYrbKn7R_prop10 <=> prop10o }