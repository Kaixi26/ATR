open main
pred id2zj8uL52gvFbQSKM4_prop12 {
  always all f: File | eventually f in Trash releases f not in Trash
}
pred __repair { id2zj8uL52gvFbQSKM4_prop12 }
check __repair { id2zj8uL52gvFbQSKM4_prop12 <=> prop12o }