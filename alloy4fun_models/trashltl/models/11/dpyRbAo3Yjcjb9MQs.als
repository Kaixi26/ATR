open main
pred iddpyRbAo3Yjcjb9MQs_prop12 {
	always (some f:File | (eventually f in Trash) implies (always f in Trash))
}
pred __repair { iddpyRbAo3Yjcjb9MQs_prop12 }
check __repair { iddpyRbAo3Yjcjb9MQs_prop12 <=> prop12o }