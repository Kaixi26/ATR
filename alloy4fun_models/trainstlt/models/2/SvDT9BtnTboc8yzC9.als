open main
pred idSvDT9BtnTboc8yzC9_prop3 {
	
 	always (Train->Track - pos) + pos = (Train->Track - pos) + pos
}
pred __repair { idSvDT9BtnTboc8yzC9_prop3 }
check __repair { idSvDT9BtnTboc8yzC9_prop3 <=> prop3o }