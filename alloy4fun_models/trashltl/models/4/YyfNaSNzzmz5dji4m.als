open main
pred idYyfNaSNzzmz5dji4m_prop5 {
	some f : File - Protected | f not in Trash and eventually f in Trash
}
pred __repair { idYyfNaSNzzmz5dji4m_prop5 }
check __repair { idYyfNaSNzzmz5dji4m_prop5 <=> prop5o }