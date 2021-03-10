# Sumary
Compile and run LuaJIT on an ARM 64 machine. I tested this on a AWS T4g instance, which use "Arm-based AWS Graviton2 processors", running `Ubuntu 20.04.2 LTS`.

Make sure your luajit is compiled with `CFLAGS+=-DLUA_USE_APICHECK` and
`CFLAGS+=-DLUA_USE_ASSERT`

```
$ luajit ./crash.lua
LuaJIT ASSERT lj_gc.c:863: lj_mem_realloc: allocated memory address 0xffffb7a0b010 outside required range
```

## Notes
* The `manifest-5.1` is from `luarocks` project. As far as I can tell, this just creates three table data structures. The paranoid may want to read through the file. I'm not too familiar with Lua, but can you even `eval()` code in the middle?
* I isolated this test case when trying to build the latest https://github.com/neovim/neovim on the instance I am using.
