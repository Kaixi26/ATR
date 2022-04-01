open main
pred idvvgL6AtLQE4o3LWyW_prop10 {
	 all f:File | f in Protected implies  f in Protected'
}
pred __repair { idvvgL6AtLQE4o3LWyW_prop10 }
check __repair { idvvgL6AtLQE4o3LWyW_prop10 <=> prop10o }