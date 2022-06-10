open main
pred idnwoFktqXoTDWZtLpc_prop18 {
	always(all f:File&Protected | always (f in Trash implies f not in Protected))
}
pred __repair { idnwoFktqXoTDWZtLpc_prop18 }
check __repair { idnwoFktqXoTDWZtLpc_prop18 <=> prop18o }