open main
pred idSsMdBXSzeCxTEyWbX_prop3 {
	
	always( all t:Train | one t.pos)
}
pred __repair { idSsMdBXSzeCxTEyWbX_prop3 }
check __repair { idSsMdBXSzeCxTEyWbX_prop3 <=> prop3o }