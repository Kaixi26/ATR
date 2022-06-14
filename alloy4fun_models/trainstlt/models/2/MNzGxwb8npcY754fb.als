open main
pred idMNzGxwb8npcY754fb_prop3 {
	
	always all t: Train | t not in Track
}
pred __repair { idMNzGxwb8npcY754fb_prop3 }
check __repair { idMNzGxwb8npcY754fb_prop3 <=> prop3o }