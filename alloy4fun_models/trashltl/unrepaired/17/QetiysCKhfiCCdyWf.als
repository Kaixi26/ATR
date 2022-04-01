open main
pred idQetiysCKhfiCCdyWf_prop18 {
	all f : Protected | always (f in Protected until (f in Trash => always f not in Protected))
}
pred __repair { idQetiysCKhfiCCdyWf_prop18 }
check __repair { idQetiysCKhfiCCdyWf_prop18 <=> prop18o }