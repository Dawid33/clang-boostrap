util = require('src.util')

local function parse_tree_to_ast(parsetree)
  stack = {{i=1,node=parsetree}};

  while #stack > 0 do 
    current = table.remove(stack, 1)

    for i = current.i, #current.node, 1 do
      inner = current.node[i]
      if type(inner) == "table" then
        current.i = i + 1;
        table.insert(stack, current)
        table.insert(stack, {i=1, node=inner})
        break;
      else
        print(inner)
      end
    end
  end 

  return {}
end

local function print_ast(ast)
  
end

return {
    parse_tree_to_ast = parse_tree_to_ast,
    print = print_ast
}