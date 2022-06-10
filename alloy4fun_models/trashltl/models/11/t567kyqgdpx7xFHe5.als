open main
pred idt567kyqgdpx7xFHe5_prop12 {
	some f:File | (eventually f in Trash) implies (always f in Trash)
}
pred __repair { idt567kyqgdpx7xFHe5_prop12 }
check __repair { idt567kyqgdpx7xFHe5_prop12 <=> prop12o }