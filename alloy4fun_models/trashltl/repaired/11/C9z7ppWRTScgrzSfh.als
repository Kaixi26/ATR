open main
pred idC9z7ppWRTScgrzSfh_prop12 {
    all f: File | eventually always f in Trash

}
pred __repair { idC9z7ppWRTScgrzSfh_prop12 }
check __repair { idC9z7ppWRTScgrzSfh_prop12 <=> prop12o }