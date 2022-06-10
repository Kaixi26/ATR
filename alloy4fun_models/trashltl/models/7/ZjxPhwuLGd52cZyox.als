open main
pred idZjxPhwuLGd52cZyox_prop8 {
	always (all f: File | eventually f.link in Trash)
}
pred __repair { idZjxPhwuLGd52cZyox_prop8 }
check __repair { idZjxPhwuLGd52cZyox_prop8 <=> prop8o }