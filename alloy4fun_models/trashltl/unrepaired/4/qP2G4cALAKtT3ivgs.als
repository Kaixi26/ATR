open main
pred idqP2G4cALAKtT3ivgs_prop5 {
	always some f : File | eventually f in Trash
}
pred __repair { idqP2G4cALAKtT3ivgs_prop5 }
check __repair { idqP2G4cALAKtT3ivgs_prop5 <=> prop5o }