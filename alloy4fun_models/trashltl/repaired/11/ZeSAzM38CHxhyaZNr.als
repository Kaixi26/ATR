open main
pred idZeSAzM38CHxhyaZNr_prop12 {
  always all f: File | f not in Trash until f in Trash
}
pred __repair { idZeSAzM38CHxhyaZNr_prop12 }
check __repair { idZeSAzM38CHxhyaZNr_prop12 <=> prop12o }