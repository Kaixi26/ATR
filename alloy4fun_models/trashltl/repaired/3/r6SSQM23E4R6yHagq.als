open main
pred idr6SSQM23E4R6yHagq_prop4 {
  	some f: File | eventually always f in Trash

}
pred __repair { idr6SSQM23E4R6yHagq_prop4 }
check __repair { idr6SSQM23E4R6yHagq_prop4 <=> prop4o }