open main
pred idAwHcAA8QFv9MqQ27e_prop11 {
	always all f:File | f in File-Protected implies after f'=Protected
  

}
pred __repair { idAwHcAA8QFv9MqQ27e_prop11 }
check __repair { idAwHcAA8QFv9MqQ27e_prop11 <=> prop11o }