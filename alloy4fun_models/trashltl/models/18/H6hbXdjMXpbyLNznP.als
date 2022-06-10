open main
pred idH6hbXdjMXpbyLNznP_prop19 {
	always all f: Protected | eventually f in Trash implies historically f in Protected
}
pred __repair { idH6hbXdjMXpbyLNznP_prop19 }
check __repair { idH6hbXdjMXpbyLNznP_prop19 <=> prop19o }