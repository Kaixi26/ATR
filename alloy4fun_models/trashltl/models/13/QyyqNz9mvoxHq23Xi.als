open main
pred idQyyqNz9mvoxHq23Xi_prop14 {
	all f : File | (f in (Trash & Protected)) implies f not in Protected' 
}
pred __repair { idQyyqNz9mvoxHq23Xi_prop14 }
check __repair { idQyyqNz9mvoxHq23Xi_prop14 <=> prop14o }