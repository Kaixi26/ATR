open main
pred idyuhRKaE8zyNt7Khme_prop17 {
  all f: File |always (eventually f in Trash) implies always after f not in File and f' not in Trash and f' not in Protected

}
pred __repair { idyuhRKaE8zyNt7Khme_prop17 }
check __repair { idyuhRKaE8zyNt7Khme_prop17 <=> prop17o }