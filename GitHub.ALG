Algoritmo "ACQA"
// Disciplina  : Algoritmo e Estrutura de Dados
// Professor   : Paulo Limírio da Silva
// Descrição   : ACQA
// Autor(a)    : Isadora Carvalho Tavares
// Data atual  : 19/09/2025
Var
i, relacao_primo, contar, valor_usuario, quant_numeros, quant_positivos, quant_negativos, quant_primos, quant_nao_primos, media, mult3, mult5 : inteiro
percent_pos, percent_neg : real
Inicio
contar := 1
repita
     escreva("Digite o ", contar, "º valor para consulta ou 0 para sair do programa: ")
     leia(valor_usuario)
     se(valor_usuario<>0) entao
          se(valor_usuario>0) entao
                          quant_positivos := quant_positivos+1
                          escreval("O número ",valor_usuario, " é positivo.")
                          media := media+valor_usuario
                          se(valor_usuario mod 3=0) entao
                                               mult3 := mult3+1
                                               escreval("O número ",valor_usuario, " é múltiplo de 3.")
                          senao
                               escreval("O número ",valor_usuario, " não é múltiplo de 3.")
                          fimse
                          se(valor_usuario mod 5=0) entao
                                               mult5 := mult5+1
                                               escreval("O número ",valor_usuario, " é múltiplo de 5.")
                          senao
                               escreval("O número ",valor_usuario, " não é múltiplo de 5.")
                          fimse
                          relacao_primo := 0
                          para i de 1 ate valor_usuario faca
                               se (valor_usuario mod i = 0) entao
                                  relacao_primo := relacao_primo + 1
                                  escreval("O número ", i, " é múltiplo de ", valor_usuario)
                               fimse
                          fimpara
                          se (relacao_primo = 2) entao
                             escreval("O número ", valor_usuario, " é um número primo.")
                             quant_primos := quant_primos+1
                          senao
                               escreval("O número ", valor_usuario, " não é um número primo.")
                               quant_nao_primos := quant_nao_primos+1
                          fimse
          senao
                quant_negativos := quant_negativos+1
                escreval("O número ",valor_usuario, " é negativo.")
          fimse
          contar := contar+1
     fimse
ate(valor_usuario=0)
escreval("PROGRAMA FINALIZADO PELO USUÁRIO!")
contar := contar-1
percent_pos := (100*quant_positivos)/contar
percent_neg := (100*quant_negativos)/contar
escreval("")
escreval("RESULTADOS FINAIS:")
escreval("Nos ", contar, " valores digitados, pode-se verificar que ", quant_positivos, " números são positivos e ", quant_negativos, " são negativos. Sendo, ", percent_pos:2:2, "% positivos e ", percent_neg:2:2, "% negativos.")
escreval("Fazendo uma análise dos números positivos, verifica-se que a média aritmética dos números é ", media:2, ", ", mult3, " são múltiplos de 3 e ", mult5, " são múltiplos de 5.")
escreval("Sendo assim, pode-se dizer também que ", quant_primos, " são números primos e ", quant_nao_primos, " não são primos.")

Fimalgoritmo