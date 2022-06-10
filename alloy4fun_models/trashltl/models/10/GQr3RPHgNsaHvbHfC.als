open main
pred idGQr3RPHgNsaHvbHfC_prop11 {
	all f : File - Protected | after f in Protected
}
pred __repair { idGQr3RPHgNsaHvbHfC_prop11 }
check __repair { idGQr3RPHgNsaHvbHfC_prop11 <=> prop11o }