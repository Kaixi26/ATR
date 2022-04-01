open main
pred idxCDHQBghgE5j2cRYz_prop18 {
	always all p: Protected | p in Trash triggered p not in Protected
}
pred __repair { idxCDHQBghgE5j2cRYz_prop18 }
check __repair { idxCDHQBghgE5j2cRYz_prop18 <=> prop18o }