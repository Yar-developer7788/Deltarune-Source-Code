.localvar 2 arguments

:[0]
b [7]

> gml_Script_ossafe_ini_close (locals=0, argc=0)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
call.i ini_close(argc=0)
ret.v

:[3]
b [6]

:[4]
pushglb.v global.current_ini
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [6]

:[5]
call.i ini_close(argc=0)
pushglb.v global.current_ini
pushglb.v global.savedata
call.i ds_map_set(argc=3)
popz.v
pushbltn.v builtin.undefined
pop.v.v global.current_ini

:[6]
exit.i

:[7]
push.i [function]gml_Script_ossafe_ini_close
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_ini_close
popz.v

:[end]