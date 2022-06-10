open main
pred idWrHDK3Pjr7YKQkzf2_prop12 {
	some f: File |always( eventually always f in Trash)
}
pred __repair { idWrHDK3Pjr7YKQkzf2_prop12 }
check __repair { idWrHDK3Pjr7YKQkzf2_prop12 <=> prop12o }