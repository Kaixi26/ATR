open main
pred id3f4EvXfrFzLYszx5G_prop8 {
	
  	always (some File.link implies eventually File.link in Trash)	
  	
}
pred __repair { id3f4EvXfrFzLYszx5G_prop8 }
check __repair { id3f4EvXfrFzLYszx5G_prop8 <=> prop8o }