open main
pred idXbQQwYs4kp3cofa7d_prop12 {
  
  eventually some Trash and (always all f: File | f in Trash implies always f in Trash)
}
pred __repair { idXbQQwYs4kp3cofa7d_prop12 }
check __repair { idXbQQwYs4kp3cofa7d_prop12 <=> prop12o }