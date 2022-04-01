open main
pred idAfvWSnj8FnE97wPfx_prop9 {
	always (all p: Protected | always p in Protected)
}
pred __repair { idAfvWSnj8FnE97wPfx_prop9 }
check __repair { idAfvWSnj8FnE97wPfx_prop9 <=> prop9o }