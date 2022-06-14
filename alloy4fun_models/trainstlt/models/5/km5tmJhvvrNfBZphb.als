open main
pred idkm5tmJhvvrNfBZphb_prop6 {
	
	
    always (Signal in Green => Signal not in Green' || no Signal & Green => Signal in Green')
}
pred __repair { idkm5tmJhvvrNfBZphb_prop6 }
check __repair { idkm5tmJhvvrNfBZphb_prop6 <=> prop6o }