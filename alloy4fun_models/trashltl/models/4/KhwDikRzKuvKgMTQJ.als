open main
pred idKhwDikRzKuvKgMTQJ_prop5 {
 	some f: File | eventually always f not in File
}
pred __repair { idKhwDikRzKuvKgMTQJ_prop5 }
check __repair { idKhwDikRzKuvKgMTQJ_prop5 <=> prop5o }