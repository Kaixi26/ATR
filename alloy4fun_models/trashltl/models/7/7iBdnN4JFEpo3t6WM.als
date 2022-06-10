open main
pred id7iBdnN4JFEpo3t6WM_prop8 {
    always all f: File.link | eventually f in Trash
}
pred __repair { id7iBdnN4JFEpo3t6WM_prop8 }
check __repair { id7iBdnN4JFEpo3t6WM_prop8 <=> prop8o }