open main
pred idajiA42ycxmaGoB2ty_prop10 {
	always (all f:File&Protected | after f in Protected)
}
pred __repair { idajiA42ycxmaGoB2ty_prop10 }
check __repair { idajiA42ycxmaGoB2ty_prop10 <=> prop10o }