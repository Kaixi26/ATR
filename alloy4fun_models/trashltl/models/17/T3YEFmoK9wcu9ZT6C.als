open main
pred idT3YEFmoK9wcu9ZT6C_prop18 {
	always (all f:Protected | f in Trash-Protected triggered f not in Protected)
}
pred __repair { idT3YEFmoK9wcu9ZT6C_prop18 }
check __repair { idT3YEFmoK9wcu9ZT6C_prop18 <=> prop18o }