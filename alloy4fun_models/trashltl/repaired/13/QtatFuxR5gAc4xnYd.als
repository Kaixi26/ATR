open main
pred idQtatFuxR5gAc4xnYd_prop14 {
  all p: Protected | p in Trash implies after p not in Protected
}
pred __repair { idQtatFuxR5gAc4xnYd_prop14 }
check __repair { idQtatFuxR5gAc4xnYd_prop14 <=> prop14o }