open main
pred idqo8BJ25gcwjo43PLT_prop19 {
	all f : Protected | eventually f in Trash implies historically f in Protected
}
pred __repair { idqo8BJ25gcwjo43PLT_prop19 }
check __repair { idqo8BJ25gcwjo43PLT_prop19 <=> prop19o }