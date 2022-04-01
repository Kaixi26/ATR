open main
pred idAPXk6QJ8r7taDnx35_prop10 { 
	always all f:File | once f in Protected && always f in Protected
}
pred __repair { idAPXk6QJ8r7taDnx35_prop10 }
check __repair { idAPXk6QJ8r7taDnx35_prop10 <=> prop10o }