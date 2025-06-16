.localvar 2 arguments
.localvar 3439 name 3584
.localvar 6278 file 3585
.localvar 147 data 3586

:[0]
b [8]

> gml_Script_ossafe_ini_open (locals=3, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [3]

:[2]
push.v arg.argument0
call.i ini_open(argc=1)
popz.v
b [7]

:[3]
push.v arg.argument0
call.i string_lower(argc=1)
pop.v.v local.name
pushloc.v local.name
pop.v.v global.current_ini
pushloc.v local.name
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
pop.v.v local.file
pushloc.v local.file
call.i is_undefined(argc=1)
conv.v.b
bf [5]

:[4]
push.s ""@157
pop.v.s local.data
b [6]

:[5]
pushloc.v local.file
pop.v.v local.data

:[6]
pushloc.v local.data
call.i ini_open_from_string(argc=1)
popz.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_ossafe_ini_open
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_ini_open
popz.v

:[end]