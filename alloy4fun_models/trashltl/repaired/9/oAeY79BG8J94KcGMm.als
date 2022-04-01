open main
pred idoAeY79BG8J94KcGMm_prop10 {
	all p: Protected | once p in Protected implies always p in Protected
}
pred __repair { idoAeY79BG8J94KcGMm_prop10 }
check __repair { idoAeY79BG8J94KcGMm_prop10 <=> prop10o }