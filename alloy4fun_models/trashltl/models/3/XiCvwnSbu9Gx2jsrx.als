open main
pred idXiCvwnSbu9Gx2jsrx_prop4 {
  	some f: File | eventually (always f in Trash)

}
pred __repair { idXiCvwnSbu9Gx2jsrx_prop4 }
check __repair { idXiCvwnSbu9Gx2jsrx_prop4 <=> prop4o }