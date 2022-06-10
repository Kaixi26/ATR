open main
pred idyPX6waxLe2efSy7xt_prop16 {
	 all f:File | once f in Protected implies always after f in Protected
}
pred __repair { idyPX6waxLe2efSy7xt_prop16 }
check __repair { idyPX6waxLe2efSy7xt_prop16 <=> prop16o }