open main
pred idAxHPNXdpYyiB7BaYQ_prop10 {
	always all f: Protected | once f in Protected implies always f in Protected
}
pred __repair { idAxHPNXdpYyiB7BaYQ_prop10 }
check __repair { idAxHPNXdpYyiB7BaYQ_prop10 <=> prop10o }