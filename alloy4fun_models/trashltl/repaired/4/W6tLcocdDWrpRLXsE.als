open main
pred idW6tLcocdDWrpRLXsE_prop5 {
 	some f : File | eventually f not in File
}
pred __repair { idW6tLcocdDWrpRLXsE_prop5 }
check __repair { idW6tLcocdDWrpRLXsE_prop5 <=> prop5o }