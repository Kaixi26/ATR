open main
pred id3sTwM7XRFvcEa34QS_prop8 {
	all f:File | some f.link implies eventually f.link in Trash
}
pred __repair { id3sTwM7XRFvcEa34QS_prop8 }
check __repair { id3sTwM7XRFvcEa34QS_prop8 <=> prop8o }