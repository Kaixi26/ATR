open main
pred idAnYqeY9qciFDxDWB6_prop18 {
	always all p : Protected | p in Protected until (p in Trash and p not in Protected )
}
pred __repair { idAnYqeY9qciFDxDWB6_prop18 }
check __repair { idAnYqeY9qciFDxDWB6_prop18 <=> prop18o }