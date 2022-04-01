open main
pred idvpPyagBCyBg3N4EWT_prop5 {
 	some f: File | eventually always f not in File
}
pred __repair { idvpPyagBCyBg3N4EWT_prop5 }
check __repair { idvpPyagBCyBg3N4EWT_prop5 <=> prop5o }