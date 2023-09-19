local pg = require("deps.parser-gen.parser-gen")
local util = require("src.util")
local ast = require("src.ast")

local f = assert(io.open("zig.peg", "r"))
local raw = f:read("*all")
f:close()
local grammar = pg.compile(raw)

f = assert(io.open("test.zig", "r"))
raw = f:read("*all")
f:close()

local errors = 0
local function printerror(desc,line,col,sfail,trec)
	errors = errors+1
	print("Error #"..errors..": "..desc.." on line "..line.."(col "..col..")")
end

local result, errors = pg.parse(raw, grammar, printerror)

my_ast = ast.parse_tree_to_ast(result)
ast.print(my_ast)

