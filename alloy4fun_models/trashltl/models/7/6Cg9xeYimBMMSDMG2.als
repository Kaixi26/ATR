open main
pred id6Cg9xeYimBMMSDMG2_prop8 {
	 (all f:File| some f.link implies eventually f.link in Trash)
}
pred __repair { id6Cg9xeYimBMMSDMG2_prop8 }
check __repair { id6Cg9xeYimBMMSDMG2_prop8 <=> prop8o }