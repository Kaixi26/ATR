open main
pred idEAveuGS3MidhdQYeY_prop10 {
	always all p : Protected | p in Protected => always p in Protected
}
pred __repair { idEAveuGS3MidhdQYeY_prop10 }
check __repair { idEAveuGS3MidhdQYeY_prop10 <=> prop10o }