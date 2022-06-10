open main
pred idxX6oJnsAJvWSt2Xw5_prop12 {
  eventually some f: File | f not in Trash until f in Trash
}
pred __repair { idxX6oJnsAJvWSt2Xw5_prop12 }
check __repair { idxX6oJnsAJvWSt2Xw5_prop12 <=> prop12o }