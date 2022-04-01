open main
pred idbgqBf7iq6mDo42yav_prop10 {
	always (all f:File | f in Protected implies always f in Protected)
}
pred __repair { idbgqBf7iq6mDo42yav_prop10 }
check __repair { idbgqBf7iq6mDo42yav_prop10 <=> prop10o }