open main
pred idGAFXr9NPRpEvWCWot_prop8 {
	always (some f : link.File | eventually f in Trash)
}
pred __repair { idGAFXr9NPRpEvWCWot_prop8 }
check __repair { idGAFXr9NPRpEvWCWot_prop8 <=> prop8o }