open main
pred idEkaLQCSo8DyREZ5j8_prop12 {
	all f : File | eventually f in Trash implies always f in Trash
}
pred __repair { idEkaLQCSo8DyREZ5j8_prop12 }
check __repair { idEkaLQCSo8DyREZ5j8_prop12 <=> prop12o }