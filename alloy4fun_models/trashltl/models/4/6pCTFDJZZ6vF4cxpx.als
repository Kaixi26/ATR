open main
pred id6pCTFDJZZ6vF4cxpx_prop5 {
  some f : File | eventually f not in File
}
pred __repair { id6pCTFDJZZ6vF4cxpx_prop5 }
check __repair { id6pCTFDJZZ6vF4cxpx_prop5 <=> prop5o }