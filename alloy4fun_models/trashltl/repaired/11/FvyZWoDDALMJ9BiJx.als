open main
pred idFvyZWoDDALMJ9BiJx_prop12 {
	eventually all f:File | always f in Trash implies f in Trash
}
pred __repair { idFvyZWoDDALMJ9BiJx_prop12 }
check __repair { idFvyZWoDDALMJ9BiJx_prop12 <=> prop12o }