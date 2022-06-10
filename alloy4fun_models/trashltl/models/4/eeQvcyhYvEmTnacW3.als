open main
pred ideeQvcyhYvEmTnacW3_prop5 {
 	some f: File | eventually f not in File
}
pred __repair { ideeQvcyhYvEmTnacW3_prop5 }
check __repair { ideeQvcyhYvEmTnacW3_prop5 <=> prop5o }