open main
pred idhNpD49FrdFretxnFZ_prop5 {
 	some f : File | always eventually f not in File
}
pred __repair { idhNpD49FrdFretxnFZ_prop5 }
check __repair { idhNpD49FrdFretxnFZ_prop5 <=> prop5o }