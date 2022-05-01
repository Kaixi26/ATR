open main
pred idwQMeoKrj9fSHM4tpm_prop10 {
  always all f: File | always f in Protected
}
pred __repair { idwQMeoKrj9fSHM4tpm_prop10 }
check __repair { idwQMeoKrj9fSHM4tpm_prop10 <=> prop10o }