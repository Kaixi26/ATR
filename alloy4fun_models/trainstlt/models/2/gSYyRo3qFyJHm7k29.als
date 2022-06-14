open main
pred idgSYyRo3qFyJHm7k29_prop3 {
	
	always all t: Train | one tr: Track | t in pos.tr implies t' in pos.tr
}
pred __repair { idgSYyRo3qFyJHm7k29_prop3 }
check __repair { idgSYyRo3qFyJHm7k29_prop3 <=> prop3o }