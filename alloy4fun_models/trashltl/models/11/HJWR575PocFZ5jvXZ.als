open main
pred idHJWR575PocFZ5jvXZ_prop12 {
  always all f: File | f in Trash triggered always f in Trash
}
pred __repair { idHJWR575PocFZ5jvXZ_prop12 }
check __repair { idHJWR575PocFZ5jvXZ_prop12 <=> prop12o }