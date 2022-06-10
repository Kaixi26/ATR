open main
pred iddYpCgRqJvxfj6HTuA_prop8 {
	all f : File.link | f not in Trash and eventually f in Trash
}
pred __repair { iddYpCgRqJvxfj6HTuA_prop8 }
check __repair { iddYpCgRqJvxfj6HTuA_prop8 <=> prop8o }