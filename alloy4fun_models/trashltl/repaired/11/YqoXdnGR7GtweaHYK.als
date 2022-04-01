open main
pred idYqoXdnGR7GtweaHYK_prop12 {
   some f:File | ((f not in Trash)and(f in Trash')) implies always f in Trash' 

}
pred __repair { idYqoXdnGR7GtweaHYK_prop12 }
check __repair { idYqoXdnGR7GtweaHYK_prop12 <=> prop12o }