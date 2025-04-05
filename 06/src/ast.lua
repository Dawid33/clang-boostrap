util = require('src.util')

local function parse_tree_to_ast(parsetree)
  local stack = {{i=1,node=parsetree}};

  while #stack > 0 do
    local current = table.remove(stack, 1)

    for i = current.i, #current.node, 1 do
      local inner = current.node[i]
      if type(inner) == "table" then
        current.i = i + 1;
        print(current.node.rule)
        table.insert(stack, current)
        table.insert(stack, {i=1, node=inner})
        break;
      else
        print(string.rep("  ", #stack) .. inner)
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
