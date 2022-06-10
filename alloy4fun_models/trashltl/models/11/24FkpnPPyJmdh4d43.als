open main
pred id24FkpnPPyJmdh4d43_prop12 {
	eventually all f:File |  f in Trash implies always f in Trash
}
pred __repair { id24FkpnPPyJmdh4d43_prop12 }
check __repair { id24FkpnPPyJmdh4d43_prop12 <=> prop12o }