open main
pred idXuKjSo4GygsfGuWR5_prop20 {
	always (all f:File | f in Trash since f not in Protected)
}
pred __repair { idXuKjSo4GygsfGuWR5_prop20 }
check __repair { idXuKjSo4GygsfGuWR5_prop20 <=> prop20o }