open main
pred id8oQoeRfsJfM3RJeak_prop8 {
	eventually all f:File | f.link in Trash
}
pred __repair { id8oQoeRfsJfM3RJeak_prop8 }
check __repair { id8oQoeRfsJfM3RJeak_prop8 <=> prop8o }