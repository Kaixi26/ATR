open main
pred idCiGJzy2EKYhhr3xeR_prop10 {
  all f : File {
  always (f in Protected implies f in Protected)
  always (f not in Protected implies f not in Protected)
  }
  
  
}
pred __repair { idCiGJzy2EKYhhr3xeR_prop10 }
check __repair { idCiGJzy2EKYhhr3xeR_prop10 <=> prop10o }