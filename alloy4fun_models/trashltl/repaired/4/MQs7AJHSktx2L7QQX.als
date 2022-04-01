open main
pred idMQs7AJHSktx2L7QQX_prop5 {
  	 some f: File | eventually f not in File
}
pred __repair { idMQs7AJHSktx2L7QQX_prop5 }
check __repair { idMQs7AJHSktx2L7QQX_prop5 <=> prop5o }