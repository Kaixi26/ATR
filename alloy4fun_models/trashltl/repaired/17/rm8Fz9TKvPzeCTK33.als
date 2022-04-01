open main
pred idrm8Fz9TKvPzeCTK33_prop18 {
	always (all f:Protected | f not in Protected releases f in Trash)
}
pred __repair { idrm8Fz9TKvPzeCTK33_prop18 }
check __repair { idrm8Fz9TKvPzeCTK33_prop18 <=> prop18o }