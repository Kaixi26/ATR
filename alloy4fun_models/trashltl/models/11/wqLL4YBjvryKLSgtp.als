open main
pred idwqLL4YBjvryKLSgtp_prop12 {
	always (some f : File | eventually always f in Trash)
}
pred __repair { idwqLL4YBjvryKLSgtp_prop12 }
check __repair { idwqLL4YBjvryKLSgtp_prop12 <=> prop12o }