open main
pred id5vGqACq5HjZGvfjTD_prop5 {
 	some f: File | eventually f not in File
}
pred __repair { id5vGqACq5HjZGvfjTD_prop5 }
check __repair { id5vGqACq5HjZGvfjTD_prop5 <=> prop5o }