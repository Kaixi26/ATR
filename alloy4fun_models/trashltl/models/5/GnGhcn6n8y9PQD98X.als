open main
pred idGnGhcn6n8y9PQD98X_prop6 {
	all f:File | f in Trash releases always(f in Trash)
}
pred __repair { idGnGhcn6n8y9PQD98X_prop6 }
check __repair { idGnGhcn6n8y9PQD98X_prop6 <=> prop6o }