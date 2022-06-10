open main
pred idJDq85JQySFYLScu3m_prop10 {
	(all f:File&Protected | always after f in Protected)
}
pred __repair { idJDq85JQySFYLScu3m_prop10 }
check __repair { idJDq85JQySFYLScu3m_prop10 <=> prop10o }