Make sure your luajit is compiled with `CFLAGS+=-DLUA_USE_APICHECK` and
`CFLAGS+=-DLUA_USE_ASSERT`

```
$ luajit ./crash.lua
LuaJIT ASSERT lj_gc.c:863: lj_mem_realloc: allocated memory address 0xffffb7a0b010 outside required range
```
