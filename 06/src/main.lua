local pg = require("deps.parser-gen.parser-gen")
local util = require("src.util")

local errs = {errMissingThen = "Missing Then"} -- one custom error
pg.setlabels(errs)

local f = assert(io.open("zig.peg", "r"))
local zig_grammar = f:read("*all")
f:close()
pg.compile(zig_grammar)

