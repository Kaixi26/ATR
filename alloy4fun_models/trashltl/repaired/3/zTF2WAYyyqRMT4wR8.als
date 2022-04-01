open main
pred idzTF2WAYyyqRMT4wR8_prop4 {
	some f:File | eventually f in Trash'
}
pred __repair { idzTF2WAYyyqRMT4wR8_prop4 }
check __repair { idzTF2WAYyyqRMT4wR8_prop4 <=> prop4o }