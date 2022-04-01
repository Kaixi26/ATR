open main
pred idQKAgMhWwCu8gPnfBd_prop6 {
	always ( some f:File| f not in Trash  and after (always (f in Trash)))
}
pred __repair { idQKAgMhWwCu8gPnfBd_prop6 }
check __repair { idQKAgMhWwCu8gPnfBd_prop6 <=> prop6o }