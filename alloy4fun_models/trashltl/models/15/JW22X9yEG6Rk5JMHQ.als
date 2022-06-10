open main
pred idJW22X9yEG6Rk5JMHQ_prop16 {
	 all f:File | once f in Protected implies always f in Protected
}
pred __repair { idJW22X9yEG6Rk5JMHQ_prop16 }
check __repair { idJW22X9yEG6Rk5JMHQ_prop16 <=> prop16o }