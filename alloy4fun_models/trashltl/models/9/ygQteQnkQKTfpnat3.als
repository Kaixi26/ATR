open main
pred idygQteQnkQKTfpnat3_prop10 {
  always all f: File | f in Protected since f in Protected
}
pred __repair { idygQteQnkQKTfpnat3_prop10 }
check __repair { idygQteQnkQKTfpnat3_prop10 <=> prop10o }