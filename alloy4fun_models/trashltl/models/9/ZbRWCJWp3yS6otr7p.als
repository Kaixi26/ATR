open main
pred idZbRWCJWp3yS6otr7p_prop10 {
	always all f:File | f in Protected implies always f in Protected
}
pred __repair { idZbRWCJWp3yS6otr7p_prop10 }
check __repair { idZbRWCJWp3yS6otr7p_prop10 <=> prop10o }