open main
pred id5LMhZBFXYyRfTgMvF_prop5 {
	some f : File | always f in File and eventually f not in File
}
pred __repair { id5LMhZBFXYyRfTgMvF_prop5 }
check __repair { id5LMhZBFXYyRfTgMvF_prop5 <=> prop5o }