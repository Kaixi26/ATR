open main
pred id4gEmo3Rbsgv8ZTxHW_prop18 {
 
	always (all f:Protected |  f in Trash  releases f not in Protected )
}
pred __repair { id4gEmo3Rbsgv8ZTxHW_prop18 }
check __repair { id4gEmo3Rbsgv8ZTxHW_prop18 <=> prop18o }