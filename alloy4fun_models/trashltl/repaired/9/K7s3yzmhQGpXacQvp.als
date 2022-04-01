open main
pred idK7s3yzmhQGpXacQvp_prop10 {
  always all f: File | always (eventually f in Protected implies f in Protected)
  
}
pred __repair { idK7s3yzmhQGpXacQvp_prop10 }
check __repair { idK7s3yzmhQGpXacQvp_prop10 <=> prop10o }