open main
pred idH5hmXBxDNXR7rusRd_prop8 {
	all f:File | some link.f implies (eventually f in Trash)
}
pred __repair { idH5hmXBxDNXR7rusRd_prop8 }
check __repair { idH5hmXBxDNXR7rusRd_prop8 <=> prop8o }