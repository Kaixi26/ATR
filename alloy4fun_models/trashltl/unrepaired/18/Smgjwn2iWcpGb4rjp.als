open main
pred idSmgjwn2iWcpGb4rjp_prop19 {
	always all p : Protected | eventually p in Trash
}
pred __repair { idSmgjwn2iWcpGb4rjp_prop19 }
check __repair { idSmgjwn2iWcpGb4rjp_prop19 <=> prop19o }