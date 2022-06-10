open main
pred id8msgvffj7a6MCfmCB_prop14 {
	all pt : Protected & Trash | after pt not in Protected
}
pred __repair { id8msgvffj7a6MCfmCB_prop14 }
check __repair { id8msgvffj7a6MCfmCB_prop14 <=> prop14o }