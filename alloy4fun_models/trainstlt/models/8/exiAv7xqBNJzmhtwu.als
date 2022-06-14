open main
pred idexiAv7xqBNJzmhtwu_prop9 {
	
	eventually (all t:Train | t.pos in Entry)	
}
pred __repair { idexiAv7xqBNJzmhtwu_prop9 }
check __repair { idexiAv7xqBNJzmhtwu_prop9 <=> prop9o }