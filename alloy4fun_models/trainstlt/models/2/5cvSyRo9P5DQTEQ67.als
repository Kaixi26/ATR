open main
pred id5cvSyRo9P5DQTEQ67_prop3 {
	
	always all t: Train | one tr: Track | always (t in pos.tr implies t' in pos.tr)
}
pred __repair { id5cvSyRo9P5DQTEQ67_prop3 }
check __repair { id5cvSyRo9P5DQTEQ67_prop3 <=> prop3o }