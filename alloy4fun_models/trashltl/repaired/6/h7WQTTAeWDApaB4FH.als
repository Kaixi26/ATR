open main
pred idh7WQTTAeWDApaB4FH_prop7 {
	always all f : File | after f in Protected
}
pred __repair { idh7WQTTAeWDApaB4FH_prop7 }
check __repair { idh7WQTTAeWDApaB4FH_prop7 <=> prop7o }