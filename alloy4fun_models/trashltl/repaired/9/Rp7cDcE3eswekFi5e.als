open main
pred idRp7cDcE3eswekFi5e_prop10 {
  always all f: File | once f in Protected implies always f in Protected
}
pred __repair { idRp7cDcE3eswekFi5e_prop10 }
check __repair { idRp7cDcE3eswekFi5e_prop10 <=> prop10o }