open main
pred ide6SCQG8JrWD7yFwt7_prop6 {
    all f : File | f in Trash implies always (f in Trash)

}
pred __repair { ide6SCQG8JrWD7yFwt7_prop6 }
check __repair { ide6SCQG8JrWD7yFwt7_prop6 <=> prop6o }