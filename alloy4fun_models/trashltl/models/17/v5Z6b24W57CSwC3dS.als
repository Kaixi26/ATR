open main
pred idv5Z6b24W57CSwC3dS_prop18 {
	all f: File | always (f in Protected until f in Trash)
}
pred __repair { idv5Z6b24W57CSwC3dS_prop18 }
check __repair { idv5Z6b24W57CSwC3dS_prop18 <=> prop18o }