open main
pred id3fBioBvfkvRPXyema_prop6 {
	
	always all s : Track.signal | s in Green => s not in Green' or s not in Green' => s in Green
}
pred __repair { id3fBioBvfkvRPXyema_prop6 }
check __repair { id3fBioBvfkvRPXyema_prop6 <=> prop6o }