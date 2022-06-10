open main
pred idvCRBMWTTFozEdhCnw_prop12 {
  eventually some f: File | f in File - Trash until f in Trash
}
pred __repair { idvCRBMWTTFozEdhCnw_prop12 }
check __repair { idvCRBMWTTFozEdhCnw_prop12 <=> prop12o }