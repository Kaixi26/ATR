open main
pred idLPhnitSJSYXWDQmib_prop7 {
	some f: (File - Protected) | eventually f in Protected
}
pred __repair { idLPhnitSJSYXWDQmib_prop7 }
check __repair { idLPhnitSJSYXWDQmib_prop7 <=> prop7o }