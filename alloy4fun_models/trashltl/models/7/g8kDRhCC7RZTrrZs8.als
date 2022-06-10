open main
pred idg8kDRhCC7RZTrrZs8_prop8 {
	eventually all f:File | f in link.f implies link.f in Trash
}
pred __repair { idg8kDRhCC7RZTrrZs8_prop8 }
check __repair { idg8kDRhCC7RZTrrZs8_prop8 <=> prop8o }