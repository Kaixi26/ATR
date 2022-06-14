open main
pred idtxb2xExEZxktdpX2G_prop11 {
	
	always ( all t:Train| some t.pos and historically t.pos in Entry)
}
pred __repair { idtxb2xExEZxktdpX2G_prop11 }
check __repair { idtxb2xExEZxktdpX2G_prop11 <=> prop11o }