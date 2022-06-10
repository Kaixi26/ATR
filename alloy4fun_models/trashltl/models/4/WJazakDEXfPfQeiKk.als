open main
pred idWJazakDEXfPfQeiKk_prop5 {
	always some f : File | eventually f not in File
}
pred __repair { idWJazakDEXfPfQeiKk_prop5 }
check __repair { idWJazakDEXfPfQeiKk_prop5 <=> prop5o }