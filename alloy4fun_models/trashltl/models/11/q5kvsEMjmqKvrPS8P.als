open main
pred idq5kvsEMjmqKvrPS8P_prop12 {
  always eventually all f: File | f in Trash
}
pred __repair { idq5kvsEMjmqKvrPS8P_prop12 }
check __repair { idq5kvsEMjmqKvrPS8P_prop12 <=> prop12o }