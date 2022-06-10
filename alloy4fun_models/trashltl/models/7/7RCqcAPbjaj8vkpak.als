open main
pred id7RCqcAPbjaj8vkpak_prop8 {
	always (all f:File| some f.^link  implies  eventually after f.^link  in Trash)
  	
}
pred __repair { id7RCqcAPbjaj8vkpak_prop8 }
check __repair { id7RCqcAPbjaj8vkpak_prop8 <=> prop8o }