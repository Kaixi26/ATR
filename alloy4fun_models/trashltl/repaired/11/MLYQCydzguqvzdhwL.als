open main
pred idMLYQCydzguqvzdhwL_prop12 {
  always eventually some Trash and all f: File | f in Trash implies always f in Trash
}
pred __repair { idMLYQCydzguqvzdhwL_prop12 }
check __repair { idMLYQCydzguqvzdhwL_prop12 <=> prop12o }