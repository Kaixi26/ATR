open main
pred idiouSeA4cuf6NYzog8_prop19 {
  always (all f : Protected | f in Trash until f in Protected)
}
pred __repair { idiouSeA4cuf6NYzog8_prop19 }
check __repair { idiouSeA4cuf6NYzog8_prop19 <=> prop19o }