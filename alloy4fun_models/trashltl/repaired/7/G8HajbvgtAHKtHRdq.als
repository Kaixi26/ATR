open main
pred idG8HajbvgtAHKtHRdq_prop8 {
	always (some f : File| f in link.File implies eventually f in Trash)
}
pred __repair { idG8HajbvgtAHKtHRdq_prop8 }
check __repair { idG8HajbvgtAHKtHRdq_prop8 <=> prop8o }