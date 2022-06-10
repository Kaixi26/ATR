open main
pred idsfuA7iJpdTkSXqaXG_prop18 {
	all f: File | (f not in Protected releases f in Trash)
}
pred __repair { idsfuA7iJpdTkSXqaXG_prop18 }
check __repair { idsfuA7iJpdTkSXqaXG_prop18 <=> prop18o }