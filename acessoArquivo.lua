 local leitura = {}

 function leitura.load(nomeArquivo)
 	local file = io.open(nomeArquivo, "r")
 	  local data = file:read("*a")
 	  io.close(file)
 	return data
 end

return leitura


