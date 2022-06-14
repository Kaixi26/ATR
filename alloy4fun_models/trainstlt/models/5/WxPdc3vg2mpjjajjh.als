open main
pred idWxPdc3vg2mpjjajjh_prop6 {
	
	all s : Signal | always s != s'

}
pred __repair { idWxPdc3vg2mpjjajjh_prop6 }
check __repair { idWxPdc3vg2mpjjajjh_prop6 <=> prop6o }