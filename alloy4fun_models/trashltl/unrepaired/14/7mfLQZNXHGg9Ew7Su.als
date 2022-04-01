open main
pred id7mfLQZNXHGg9Ew7Su_prop15 {
	always (some File implies (eventually File in Trash))
}
pred __repair { id7mfLQZNXHGg9Ew7Su_prop15 }
check __repair { id7mfLQZNXHGg9Ew7Su_prop15 <=> prop15o }