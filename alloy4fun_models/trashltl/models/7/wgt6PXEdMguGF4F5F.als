open main
pred idwgt6PXEdMguGF4F5F_prop8 {
	always all f : File | some f.link => eventually (f.link in Trash)
}
pred __repair { idwgt6PXEdMguGF4F5F_prop8 }
check __repair { idwgt6PXEdMguGF4F5F_prop8 <=> prop8o }