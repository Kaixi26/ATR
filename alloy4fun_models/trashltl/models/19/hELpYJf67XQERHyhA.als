open main
pred idhELpYJf67XQERHyhA_prop20 {
	always all f : File | f in Trash releases f not in Protected
}
pred __repair { idhELpYJf67XQERHyhA_prop20 }
check __repair { idhELpYJf67XQERHyhA_prop20 <=> prop20o }