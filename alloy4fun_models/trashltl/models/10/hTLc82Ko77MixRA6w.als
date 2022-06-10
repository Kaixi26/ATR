open main
pred idhTLc82Ko77MixRA6w_prop11 {
	always all f:File | f in File-Protected implies (f in Protected)
  

}
pred __repair { idhTLc82Ko77MixRA6w_prop11 }
check __repair { idhTLc82Ko77MixRA6w_prop11 <=> prop11o }