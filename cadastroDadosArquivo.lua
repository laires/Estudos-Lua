    cadastro = {} 
        function cadastro.imprimirArquivo(nomes) for i, nomes in pairs(cadastro) do
          return  print("Nomes: " .. tostring(cadastro[nomes]) .. " no indice: " .. tostring(cadastro[i])) end 
        end
        
        function cadastro.f_inserir()--Função dentro da table cadastro.
         print("\t\tInsira seu nome e sua idade!\n")
         print("\t\tOu digite fim para finalizar!\n")
         print("Crie arquivo .txt")
            arquivo = io.read()
            io.output(arquivo, wra)
            for i, v in pairs(cadastro) do                  
                    print("\t\t\t*****CADASTROS*****")
                    print("----------------------------------------------------------")
                    print("Nome:")
                    cadastro[v] = io.read()
                    io.write(cadastro[v]," \n")
                    if cadastro[v] == "fim" then
                      quit()
                      print("Cadastro finalizado pelo usuário!\n\n")
                      --cadastro.f_imprimir()
                    end                                  
                    print("----------------------------------------------------------\n\n")           
            end
        end
         table.insert(cadastro, v)
         return cadastro

