open main
pred id3mGqYrJpBk9Mupmzt_prop18 {
	always all p : Protected | p in Trash implies p not in Protected'
}
pred __repair { id3mGqYrJpBk9Mupmzt_prop18 }
check __repair { id3mGqYrJpBk9Mupmzt_prop18 <=> prop18o }