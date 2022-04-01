open main
pred idn6Twqrmra4T9QAXxt_prop20 {
	always all f:File | f not in Protected triggered f in Trash
}
pred __repair { idn6Twqrmra4T9QAXxt_prop20 }
check __repair { idn6Twqrmra4T9QAXxt_prop20 <=> prop20o }