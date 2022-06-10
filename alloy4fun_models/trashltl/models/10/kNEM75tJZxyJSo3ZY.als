open main
pred idkNEM75tJZxyJSo3ZY_prop11 {
	all f : File | (f not in Protected) implies (after f in Protected)
}
pred __repair { idkNEM75tJZxyJSo3ZY_prop11 }
check __repair { idkNEM75tJZxyJSo3ZY_prop11 <=> prop11o }