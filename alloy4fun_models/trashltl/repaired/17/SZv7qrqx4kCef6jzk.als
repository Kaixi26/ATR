open main
pred idSZv7qrqx4kCef6jzk_prop18 {
	always all p : Protected | p not in Protected' until p in Trash
}
pred __repair { idSZv7qrqx4kCef6jzk_prop18 }
check __repair { idSZv7qrqx4kCef6jzk_prop18 <=> prop18o }