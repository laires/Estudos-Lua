local leitor = require("acessoArquivo")
local formate = require("formataTexto")
local cad = require("cadastroDadosArquivo")

print("Deseja: 1-inserir __ 2-ler do arquivos __ 3-Imprimir conteudo table __ 4-Substituir letras \n")
local op = io.read()
  if (op == "1") then repeat cad.f_inserir() until true
    elseif(op == "2")  then arq = leitor.load(nomeArquivo) print(arq)
      elseif (op == "3") then  print("Nomes inseridos no arquivo:\n") cad.imprimirArquivo(arq) -- Ainda bugado
        elseif (op == "4") then arq = leitor.load("cadastro.txt") formate.alteraLetra(arq,padrao,substituto) end -- Ainda bugado






    



--print(string.gsub(arq, "a","K")) --substitui simbolo = por nome lael



