open main
pred idWrws9zgjHHXMCCu3m_prop9 {
	always (all f:Protected | f not in Trash')
}
pred __repair { idWrws9zgjHHXMCCu3m_prop9 }
check __repair { idWrws9zgjHHXMCCu3m_prop9 <=> prop9o }