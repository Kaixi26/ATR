open main
pred idHAKsJPTPXRKii7Q2n_prop5 {
	eventually (
  		File != File' and
      	File' in File
  	)
}
pred __repair { idHAKsJPTPXRKii7Q2n_prop5 }
check __repair { idHAKsJPTPXRKii7Q2n_prop5 <=> prop5o }