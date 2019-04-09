function add_event (op1, op2)
       local o1, o2 = tonumber(op1), tonumber(op2)
       if o1 and o2 then  -- os dois operandos são numéricos?
         return o1 + o2   -- '+' aqui é a 'add' primitiva
       else  -- pelo menos um dos operandos não é numérico
         local h = getbinhandler(op1, op2, "__add")
         if h then
           -- chama o tratador com ambos os operandos
           return (h(op1, op2))
         else  -- nenhum tratador disponível: comportamento padrão
           --error(···)
         end
       end
     end
     
     function unm_event (op)
       local o = tonumber(op)
       if o then  -- operando é numérico?
         return -o  -- '-' aqui é a 'unm' primitiva
       else  -- o operando não é numérico
         -- Tenta obter um tratador a partir do operando
         local h = metatable(op).__unm
         if h then
           -- chama o tratador com o operando
           return (h(op))
         else  -- nenhum tratador disponível: comportamento padrão
           --error(···)
         end
       end
     end
     
      function concat_event (op1, op2)
       if (type(op1) == "string" or type(op1) == "number") and
          (type(op2) == "string" or type(op2) == "number") then
         return op1 .. op2  -- concatenação primitiva de cadeias
       else
         local h = getbinhandler(op1, op2, "__concat")
         if h then
           return (h(op1, op2))
         else
           --error(···)
         end
       end
     end
     
     function len_event (op)
       if type(op) == "string" then
         return strlen(op)      -- comprimento de cadeias primitivo
       else
         local h = metatable(op).__len
         if h then
           return (h(op))       -- chama tratador com o operando
         elseif type(op) == "table" then
           return #op              -- comprimento de tabela primitivo
         else  -- nenhum tratador disponível: erro
           --error(···)
         end
       end
     end
     
     



function addfile (filename)
local sum = 0
  for line in io.lines(filename) do
    sum = sum + tonumber(line)
  end
  return sum
end


function buildPrefixTable (list)
local t = {}
for _, name in ipairs(list) do
for len = 1, #name do
local prefix = string.sub(name, 1, len)
if t[prefix] then
t[prefix] = true -- colisao
else
t[prefix] = name
end
end
end
return t
end

function complete (t, prefix)
local w = t[prefix]
if type(w) == "string" then return w
elseif w == true then error("ambiguous prefix")
else error("invalid prefix")
end
end

function prefixes (s, len)
len = len or 0
if len <= #s then
return string.sub(s, 1, len),
prefixes(s, len + 1)
end
end
print(prefixes("alo")) --> a al alo

