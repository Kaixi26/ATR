open main
pred idrpKs8EuHfzHiQXae5_prop18 {
	
  	always ( all f : File |
      	(once f in Protected) and f not in Protected implies (
          	once f in Trash
        )
    )
}
pred __repair { idrpKs8EuHfzHiQXae5_prop18 }
check __repair { idrpKs8EuHfzHiQXae5_prop18 <=> prop18o }