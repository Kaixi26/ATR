open main
pred idby84W2FsqkeqnthRS_prop18 {
  always (all f : Protected | f in Trash triggered after f not in Protected)
}
pred __repair { idby84W2FsqkeqnthRS_prop18 }
check __repair { idby84W2FsqkeqnthRS_prop18 <=> prop18o }