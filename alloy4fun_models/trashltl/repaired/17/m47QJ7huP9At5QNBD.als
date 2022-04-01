open main
pred idm47QJ7huP9At5QNBD_prop18 {
	always all f : Protected | f in Trash' => f not in Protected'
}
pred __repair { idm47QJ7huP9At5QNBD_prop18 }
check __repair { idm47QJ7huP9At5QNBD_prop18 <=> prop18o }