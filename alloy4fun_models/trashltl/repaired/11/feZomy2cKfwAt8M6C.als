open main
pred idfeZomy2cKfwAt8M6C_prop12 {
	eventually all f:File |  f in Trash implies always f in Trash
}
pred __repair { idfeZomy2cKfwAt8M6C_prop12 }
check __repair { idfeZomy2cKfwAt8M6C_prop12 <=> prop12o }