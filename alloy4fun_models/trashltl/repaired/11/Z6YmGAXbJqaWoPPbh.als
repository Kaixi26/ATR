open main
pred idZ6YmGAXbJqaWoPPbh_prop12 {
  eventually some f:File | ((f not in Trash)and(f in Trash')) implies always f in Trash' 

}
pred __repair { idZ6YmGAXbJqaWoPPbh_prop12 }
check __repair { idZ6YmGAXbJqaWoPPbh_prop12 <=> prop12o }