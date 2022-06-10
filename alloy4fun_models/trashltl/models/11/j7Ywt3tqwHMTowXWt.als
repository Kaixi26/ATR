open main
pred idj7Ywt3tqwHMTowXWt_prop12 {
	some f: File | eventually f in Trash and after always f in Trash
}
pred __repair { idj7Ywt3tqwHMTowXWt_prop12 }
check __repair { idj7Ywt3tqwHMTowXWt_prop12 <=> prop12o }