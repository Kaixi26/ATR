open main
pred idFaAQB5sDaTWwrKgxi_prop8 {
    	always all l: File.link | eventually l in Trash
}
pred __repair { idFaAQB5sDaTWwrKgxi_prop8 }
check __repair { idFaAQB5sDaTWwrKgxi_prop8 <=> prop8o }