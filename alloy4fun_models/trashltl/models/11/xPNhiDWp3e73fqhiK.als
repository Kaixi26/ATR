open main
pred idxPNhiDWp3e73fqhiK_prop12 {
	always(all f : File | eventually f in Trash)
}
pred __repair { idxPNhiDWp3e73fqhiK_prop12 }
check __repair { idxPNhiDWp3e73fqhiK_prop12 <=> prop12o }