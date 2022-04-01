open main
pred idyEM5waPequks4w56z_prop18 {
  	
	
  	always all f: File | f in Trash triggered f not in Protected
}
pred __repair { idyEM5waPequks4w56z_prop18 }
check __repair { idyEM5waPequks4w56z_prop18 <=> prop18o }