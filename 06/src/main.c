#include <stdio.h>
#include <string.h>
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
#include "lptree.h"

int main (void) {
    int error;
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    luaopen_lpeglabel(L);
    lua_setglobal(L, "m");
    luaL_loadfile(L, "main.lua");
    error = lua_pcall(L, 0, LUA_MULTRET, 0);
    if (error) {
        fprintf(stderr, "%s", lua_tostring(L, -1));
        lua_pop(L, 1);  /* pop error message from the stack */
    }
    printf("\n");
    lua_close(L);
    return 0;
}