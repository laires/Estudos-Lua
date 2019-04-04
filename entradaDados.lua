
local function main()

    cadastro = {
        nome = {}, idade = {}, f_imprimir = function (imprimirNomesIdades)--Função dentro da table cadastro.
            for v, nomes in pairs(cadastro.nome) do
                print("Os nomes inseridos foram: " .. tostring(cadastro.nome[nomes]))
            end
        end,
        f_inserir = function (inserirNomeIdade)--Função dentro da table cadastro.
        io.output("cadastro.txt")
            
            for i, v in pairs(cadastro.nome) do
                for n, j in pairs(cadastro.idade) do
                                        
                    print("\t\t\t*****CADASTROS*****")
                    print("----------------------------------------------------------")
                    --table.insert(cadastro.nome, i, v)
                    print("Nome:")
                    cadastro.nome[v] = io.read()
                    io.write(cadastro.nome[v]," -\t")
                   
                    if cadastro.nome[v] == "fim" then
          				quit()
                    	print("Cadastro finalizado pelo usuário!")
                    end
                    
                    print("----------------------------------------------------------")
                                        
                  	--table.insert(cadastro.idade, n, j)
                    print("Idade:")
                    cadastro.idade[j] = io.read()
                    io.write(cadastro.idade[j],"\n")
                                                            
                    print("----------------------------------------------------------\n\n")
                               
                end
            end
            return cadastro
        end
    }-- Fim da table cadastro
    
    table.insert(cadastro.nome, {nome = cadastro.nome})
    table.insert(cadastro.idade, {idade = cadastro.idade})

    print("\t\tInsira seu nome e sua idade!\n")
    print("\t\tOu digite fim para finalizar!\n")
    
    repeat cadastro.f_inserir() until cadastro.nome[v] == "fim"
    	--cadastro.f_imprimir(imprimirNomesIdades)

       
end
main()
