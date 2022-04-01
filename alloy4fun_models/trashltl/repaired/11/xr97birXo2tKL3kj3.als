open main
pred idxr97birXo2tKL3kj3_prop12 {
	eventually always some f : File | f not in Trash implies always f in Trash'
}
pred __repair { idxr97birXo2tKL3kj3_prop12 }
check __repair { idxr97birXo2tKL3kj3_prop12 <=> prop12o }