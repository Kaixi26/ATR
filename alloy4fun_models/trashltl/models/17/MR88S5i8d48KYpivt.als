open main
pred idMR88S5i8d48KYpivt_prop18 {
	always all p : Protected | p in Trash triggered p not in Protected
}
pred __repair { idMR88S5i8d48KYpivt_prop18 }
check __repair { idMR88S5i8d48KYpivt_prop18 <=> prop18o }