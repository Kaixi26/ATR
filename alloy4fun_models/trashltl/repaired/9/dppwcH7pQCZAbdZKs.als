open main
pred iddppwcH7pQCZAbdZKs_prop10 {
	always (all f:File&Protected | always f in Protected)
}
pred __repair { iddppwcH7pQCZAbdZKs_prop10 }
check __repair { iddppwcH7pQCZAbdZKs_prop10 <=> prop10o }