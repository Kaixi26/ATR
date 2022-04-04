open main
pred idwxuJ3nWaubKfXKAEf_prop5 {
	eventually (
      	some f: Trash | f not in Trash'
    )
}
pred __repair { idwxuJ3nWaubKfXKAEf_prop5 }
check __repair { idwxuJ3nWaubKfXKAEf_prop5 <=> prop5o }