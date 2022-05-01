open main
pred id6za4n2GXeYwciDE28_prop8 {
  eventually ( some f1,f2 : File | f1->f2 in link implies f1 in Trash  )
  
}
pred __repair { id6za4n2GXeYwciDE28_prop8 }
check __repair { id6za4n2GXeYwciDE28_prop8 <=> prop8o }