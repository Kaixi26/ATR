open main
pred idy7gGcThTeEGc7zRdr_prop5 {
  some f: File | f not in Trash until f in Trash
}
pred __repair { idy7gGcThTeEGc7zRdr_prop5 }
check __repair { idy7gGcThTeEGc7zRdr_prop5 <=> prop5o }