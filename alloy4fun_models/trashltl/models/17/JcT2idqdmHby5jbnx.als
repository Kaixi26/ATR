open main
pred idJcT2idqdmHby5jbnx_prop18 {
	all f : Protected | always (f in Protected until f in Trash)
}
pred __repair { idJcT2idqdmHby5jbnx_prop18 }
check __repair { idJcT2idqdmHby5jbnx_prop18 <=> prop18o }