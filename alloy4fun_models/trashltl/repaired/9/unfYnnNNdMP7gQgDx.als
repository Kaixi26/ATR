open main
pred idunfYnnNNdMP7gQgDx_prop10 {
	always (all f:File&Protected | always after f in Protected)
}
pred __repair { idunfYnnNNdMP7gQgDx_prop10 }
check __repair { idunfYnnNNdMP7gQgDx_prop10 <=> prop10o }