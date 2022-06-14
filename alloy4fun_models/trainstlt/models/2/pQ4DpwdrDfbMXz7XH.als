open main
pred idpQ4DpwdrDfbMXz7XH_prop3 {
	
	always all t: Train | one tr: Track | always t in pos.tr implies t' in pos.tr
}
pred __repair { idpQ4DpwdrDfbMXz7XH_prop3 }
check __repair { idpQ4DpwdrDfbMXz7XH_prop3 <=> prop3o }