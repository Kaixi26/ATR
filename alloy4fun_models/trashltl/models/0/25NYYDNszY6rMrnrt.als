open main
pred id25NYYDNszY6rMrnrt_prop1 {
	before all f:File | f in Protected
}
pred __repair { id25NYYDNszY6rMrnrt_prop1 }
check __repair { id25NYYDNszY6rMrnrt_prop1 <=> prop1o }
