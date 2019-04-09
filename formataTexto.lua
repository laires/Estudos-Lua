local leitura = require("acessoArquivo")
textoFormatado = {}

function textoFormatado.alteraLetra(frase,padrao,substituto)
  for i, v in pairs(textoFormatado)  do
      print("Digite nome do arquivo: ")
      nomeArquivo = io.read()  
      file = io.open(nomeArquivo, "r")
      v = file:read("*a")
    print("Digite padrão: ")
      padrao = io.read()
    print("Digite caractere substituto: ")
      substituto = io.read()  
  end
  return string.gsub(tostring(v), padrao, substituto) 
end
table.insert(textoFormatado,v)

return textoFormatado


