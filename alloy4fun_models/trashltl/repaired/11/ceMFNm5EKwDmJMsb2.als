open main
pred idceMFNm5EKwDmJMsb2_prop12 {
	always all f : File | eventually f in Trash
  	always all f : Trash | f in Trash'
}
pred __repair { idceMFNm5EKwDmJMsb2_prop12 }
check __repair { idceMFNm5EKwDmJMsb2_prop12 <=> prop12o }