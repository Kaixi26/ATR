open main
pred id4tikY4q5F4BgtqwNs_prop14 {
  all f: File | once (f in Protected and f in Trash implies always (after f in Trash and f not in Protected))

}
pred __repair { id4tikY4q5F4BgtqwNs_prop14 }
check __repair { id4tikY4q5F4BgtqwNs_prop14 <=> prop14o }