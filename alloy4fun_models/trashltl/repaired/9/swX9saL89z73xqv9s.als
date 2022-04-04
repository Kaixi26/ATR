open main
pred idswX9saL89z73xqv9s_prop10 {
	always (all f:File | always f in Protected)
}
pred __repair { idswX9saL89z73xqv9s_prop10 }
check __repair { idswX9saL89z73xqv9s_prop10 <=> prop10o }