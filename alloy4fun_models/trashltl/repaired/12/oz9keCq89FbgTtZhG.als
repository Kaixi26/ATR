open main
pred idoz9keCq89FbgTtZhG_prop13 {
	always some f : File | f in Trash implies once f not in Trash
}
pred __repair { idoz9keCq89FbgTtZhG_prop13 }
check __repair { idoz9keCq89FbgTtZhG_prop13 <=> prop13o }