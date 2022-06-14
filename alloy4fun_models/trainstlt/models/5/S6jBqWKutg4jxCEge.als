open main
pred idS6jBqWKutg4jxCEge_prop6 {
	
	always all s: Signal | s in Green implies s' not in Green
}
pred __repair { idS6jBqWKutg4jxCEge_prop6 }
check __repair { idS6jBqWKutg4jxCEge_prop6 <=> prop6o }