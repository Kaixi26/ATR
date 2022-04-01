open main
pred idKHEJXiAB5F5Ng7GgJ_prop12 {
	some f : File | f not in Trash until (eventually f in Trash)
}
pred __repair { idKHEJXiAB5F5Ng7GgJ_prop12 }
check __repair { idKHEJXiAB5F5Ng7GgJ_prop12 <=> prop12o }