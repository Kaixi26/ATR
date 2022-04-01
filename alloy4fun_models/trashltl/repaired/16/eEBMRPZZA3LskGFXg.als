open main
pred ideEBMRPZZA3LskGFXg_prop17 {
	always File' = File - File & Trash
}
pred __repair { ideEBMRPZZA3LskGFXg_prop17 }
check __repair { ideEBMRPZZA3LskGFXg_prop17 <=> prop17o }