Algoritmo "MapaAlgoritimos RecebendoParametros"

procedimento colocaX
       Inicio
             para x de 1 ate 6 passo 1 faca
                  para y de 1 ate 6 passo 1 faca
                       tab[x,y]<-"|X|"
                  fimpara
             fimpara
fimprocedimento

procedimento exibeTabuleiro
       Inicio
             para x de 1 ate 6 passo 1 faca
                  para y de 1 ate 6 passo 1 faca
                       escreva(tab[x,y])
                  fimpara
                  escreval("")
             fimpara
fimprocedimento

procedimento recebeParametro
       Inicio
             para x de 1 ate 6 passo 1 faca
                  para y de 1 ate 6 passo 1 faca
                       tab[x,y]<-"|X|"
                  fimpara
             fimpara
                       tab[5,1]<-"|E|"
                       tab[5,2]<-"| |"
                       tab[4,2]<-"| |"
                       tab[3,2]<-"| |"
                       tab[3,3]<-"| |"
                       tab[2,3]<-"| |"
                       tab[2,4]<-"| |"
                       tab[2,5]<-"| |"
                       tab[3,5]<-"| |"
                       tab[4,5]<-"| |"
                       tab[5,5]<-"| |"
                       tab[5,6]<-"|S|"
fimprocedimento

Var

   tab: vetor[1..6,1..6] de caractere
   x,y,opcao,condicao: inteiro

Inicio

condicao<-0

repita

      escreval("")
      escreval("»[1]Preencher tabuleiro com X:")
      escreval("»[2]Exibir Tabuleiro:")
      escreval("»[3]Receber Parametros: |E| | | e |S|:")
      escreval("»[4]Sair do programa")
      escreval("")
      escreva("Digite a opção escolhida: ")
      leia(opcao)

                 se ((opcao=2) e (condicao=0)) entao
                    escreval("")
                    escreval("O TABULEIRO ESTÁ VAZIO!!!")
                    escreval("A opção [2] só fica disponível depois de preencher o tabuleiro ou rebeber parâmetros!!!")
                    escreval("")
                    escreval("Favor escolher outra opção: ")
                    escreval("")

                    senão
                         escolha opcao

                                 caso 1
                                 condicao<-1
                                 colocaX()
                                 escreval("A opção [1] foi escolhida")
                                 escreval("")
                                 escreval("PREENCHENDO COM X...")
                                 escreval("")
                                 escreval("Já pode exibir o tabuleiro!")

                                 caso 2
                                 escreval("A opção [2] foi escolhida")
                                 escreval("")
                                 exibeTabuleiro()
                                 condicao<-1
                                 
                                 caso 3
                                 condicao<-1
                                 recebeParametro()
                                 escreval("A opção [3] foi escolhida")
                                 escreval("")
                                 escreval("RECEBENDO OS PARÂMETROS...")
                                 escreval("")
                                 escreval("Já pode exibir o tabuleiro!")

                                 caso 4
                                 escreval("Saindo do programa...")
                                 escreval("")

                                 outrocaso
                                 Escreval("Opção incorreta, digite outra opção!!!")

                         fimescolha
                 fimse
ate (opcao = 4)


Fimalgoritmo